{
  description = ''Game Boy Advance development library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."natu-master".dir   = "master";
  inputs."natu-master".owner = "nim-nix-pkgs";
  inputs."natu-master".ref   = "master";
  inputs."natu-master".repo  = "natu";
  inputs."natu-master".type  = "github";
  inputs."natu-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."natu-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."natu-0_1_1".dir   = "0_1_1";
  inputs."natu-0_1_1".owner = "nim-nix-pkgs";
  inputs."natu-0_1_1".ref   = "master";
  inputs."natu-0_1_1".repo  = "natu";
  inputs."natu-0_1_1".type  = "github";
  inputs."natu-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."natu-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."natu-0_1_2".dir   = "0_1_2";
  inputs."natu-0_1_2".owner = "nim-nix-pkgs";
  inputs."natu-0_1_2".ref   = "master";
  inputs."natu-0_1_2".repo  = "natu";
  inputs."natu-0_1_2".type  = "github";
  inputs."natu-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."natu-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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