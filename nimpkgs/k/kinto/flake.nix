{
  description = ''Kinto Client for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."kinto-master".dir   = "master";
  inputs."kinto-master".owner = "nim-nix-pkgs";
  inputs."kinto-master".ref   = "master";
  inputs."kinto-master".repo  = "kinto";
  inputs."kinto-master".type  = "github";
  inputs."kinto-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."kinto-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."kinto-0_2_0".dir   = "0_2_0";
  inputs."kinto-0_2_0".owner = "nim-nix-pkgs";
  inputs."kinto-0_2_0".ref   = "master";
  inputs."kinto-0_2_0".repo  = "kinto";
  inputs."kinto-0_2_0".type  = "github";
  inputs."kinto-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."kinto-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."kinto-0_2_2".dir   = "0_2_2";
  inputs."kinto-0_2_2".owner = "nim-nix-pkgs";
  inputs."kinto-0_2_2".ref   = "master";
  inputs."kinto-0_2_2".repo  = "kinto";
  inputs."kinto-0_2_2".type  = "github";
  inputs."kinto-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."kinto-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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