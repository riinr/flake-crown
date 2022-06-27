{
  description = ''Linux adduser/useradd library with all batteries included.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."useradd-master".dir   = "master";
  inputs."useradd-master".owner = "nim-nix-pkgs";
  inputs."useradd-master".ref   = "master";
  inputs."useradd-master".repo  = "useradd";
  inputs."useradd-master".type  = "github";
  inputs."useradd-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."useradd-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."useradd-0_1_0".dir   = "0_1_0";
  inputs."useradd-0_1_0".owner = "nim-nix-pkgs";
  inputs."useradd-0_1_0".ref   = "master";
  inputs."useradd-0_1_0".repo  = "useradd";
  inputs."useradd-0_1_0".type  = "github";
  inputs."useradd-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."useradd-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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