{
  description = ''A more advanced adduser for your Alpine based Docker images.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."userdef-master".dir   = "master";
  inputs."userdef-master".owner = "nim-nix-pkgs";
  inputs."userdef-master".ref   = "master";
  inputs."userdef-master".repo  = "userdef";
  inputs."userdef-master".type  = "github";
  inputs."userdef-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."userdef-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."userdef-0_1_0".dir   = "0_1_0";
  inputs."userdef-0_1_0".owner = "nim-nix-pkgs";
  inputs."userdef-0_1_0".ref   = "master";
  inputs."userdef-0_1_0".repo  = "userdef";
  inputs."userdef-0_1_0".type  = "github";
  inputs."userdef-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."userdef-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."userdef-0_2_0".dir   = "0_2_0";
  inputs."userdef-0_2_0".owner = "nim-nix-pkgs";
  inputs."userdef-0_2_0".ref   = "master";
  inputs."userdef-0_2_0".repo  = "userdef";
  inputs."userdef-0_2_0".type  = "github";
  inputs."userdef-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."userdef-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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