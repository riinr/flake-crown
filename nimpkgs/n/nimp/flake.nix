{
  description = ''A package manager that delegates to package authors'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimp-master".dir   = "master";
  inputs."nimp-master".owner = "nim-nix-pkgs";
  inputs."nimp-master".ref   = "master";
  inputs."nimp-master".repo  = "nimp";
  inputs."nimp-master".type  = "github";
  inputs."nimp-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimp-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimp-v0_1_0".dir   = "v0_1_0";
  inputs."nimp-v0_1_0".owner = "nim-nix-pkgs";
  inputs."nimp-v0_1_0".ref   = "master";
  inputs."nimp-v0_1_0".repo  = "nimp";
  inputs."nimp-v0_1_0".type  = "github";
  inputs."nimp-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimp-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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