{
  description = ''Tool/Lib to highlight text in CLI by using regular expressions.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."highlight-master".dir   = "master";
  inputs."highlight-master".owner = "nim-nix-pkgs";
  inputs."highlight-master".ref   = "master";
  inputs."highlight-master".repo  = "highlight";
  inputs."highlight-master".type  = "github";
  inputs."highlight-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."highlight-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."highlight-v0_1_0".dir   = "v0_1_0";
  inputs."highlight-v0_1_0".owner = "nim-nix-pkgs";
  inputs."highlight-v0_1_0".ref   = "master";
  inputs."highlight-v0_1_0".repo  = "highlight";
  inputs."highlight-v0_1_0".type  = "github";
  inputs."highlight-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."highlight-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"];
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}