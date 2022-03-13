{
  description = ''word size strings stored in an integer'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."shorteststring-master".dir   = "master";
  inputs."shorteststring-master".owner = "nim-nix-pkgs";
  inputs."shorteststring-master".ref   = "master";
  inputs."shorteststring-master".repo  = "shorteststring";
  inputs."shorteststring-master".type  = "github";
  inputs."shorteststring-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shorteststring-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."shorteststring-v0_1_0".dir   = "v0_1_0";
  inputs."shorteststring-v0_1_0".owner = "nim-nix-pkgs";
  inputs."shorteststring-v0_1_0".ref   = "master";
  inputs."shorteststring-v0_1_0".repo  = "shorteststring";
  inputs."shorteststring-v0_1_0".type  = "github";
  inputs."shorteststring-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shorteststring-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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