{
  description = ''Code writer for Cirru syntax'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."cirru_writer-master".dir   = "master";
  inputs."cirru_writer-master".owner = "nim-nix-pkgs";
  inputs."cirru_writer-master".ref   = "master";
  inputs."cirru_writer-master".repo  = "cirru_writer";
  inputs."cirru_writer-master".type  = "github";
  inputs."cirru_writer-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cirru_writer-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cirru_writer-v0_1_0".dir   = "v0_1_0";
  inputs."cirru_writer-v0_1_0".owner = "nim-nix-pkgs";
  inputs."cirru_writer-v0_1_0".ref   = "master";
  inputs."cirru_writer-v0_1_0".repo  = "cirru_writer";
  inputs."cirru_writer-v0_1_0".type  = "github";
  inputs."cirru_writer-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cirru_writer-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cirru_writer-v0_1_1".dir   = "v0_1_1";
  inputs."cirru_writer-v0_1_1".owner = "nim-nix-pkgs";
  inputs."cirru_writer-v0_1_1".ref   = "master";
  inputs."cirru_writer-v0_1_1".repo  = "cirru_writer";
  inputs."cirru_writer-v0_1_1".type  = "github";
  inputs."cirru_writer-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cirru_writer-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cirru_writer-v0_1_2".dir   = "v0_1_2";
  inputs."cirru_writer-v0_1_2".owner = "nim-nix-pkgs";
  inputs."cirru_writer-v0_1_2".ref   = "master";
  inputs."cirru_writer-v0_1_2".repo  = "cirru_writer";
  inputs."cirru_writer-v0_1_2".type  = "github";
  inputs."cirru_writer-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cirru_writer-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cirru_writer-v0_1_3".dir   = "v0_1_3";
  inputs."cirru_writer-v0_1_3".owner = "nim-nix-pkgs";
  inputs."cirru_writer-v0_1_3".ref   = "master";
  inputs."cirru_writer-v0_1_3".repo  = "cirru_writer";
  inputs."cirru_writer-v0_1_3".type  = "github";
  inputs."cirru_writer-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cirru_writer-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cirru_writer-v0_1_4".dir   = "v0_1_4";
  inputs."cirru_writer-v0_1_4".owner = "nim-nix-pkgs";
  inputs."cirru_writer-v0_1_4".ref   = "master";
  inputs."cirru_writer-v0_1_4".repo  = "cirru_writer";
  inputs."cirru_writer-v0_1_4".type  = "github";
  inputs."cirru_writer-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cirru_writer-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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