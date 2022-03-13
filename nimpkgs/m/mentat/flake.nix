{
  description = ''A Nim library for data science and machine learning'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."mentat-master".dir   = "master";
  inputs."mentat-master".owner = "nim-nix-pkgs";
  inputs."mentat-master".ref   = "master";
  inputs."mentat-master".repo  = "mentat";
  inputs."mentat-master".type  = "github";
  inputs."mentat-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mentat-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mentat-v0_1_0".dir   = "v0_1_0";
  inputs."mentat-v0_1_0".owner = "nim-nix-pkgs";
  inputs."mentat-v0_1_0".ref   = "master";
  inputs."mentat-v0_1_0".repo  = "mentat";
  inputs."mentat-v0_1_0".type  = "github";
  inputs."mentat-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mentat-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mentat-v0_1_1".dir   = "v0_1_1";
  inputs."mentat-v0_1_1".owner = "nim-nix-pkgs";
  inputs."mentat-v0_1_1".ref   = "master";
  inputs."mentat-v0_1_1".repo  = "mentat";
  inputs."mentat-v0_1_1".type  = "github";
  inputs."mentat-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mentat-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mentat-v0_1_2".dir   = "v0_1_2";
  inputs."mentat-v0_1_2".owner = "nim-nix-pkgs";
  inputs."mentat-v0_1_2".ref   = "master";
  inputs."mentat-v0_1_2".repo  = "mentat";
  inputs."mentat-v0_1_2".type  = "github";
  inputs."mentat-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mentat-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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