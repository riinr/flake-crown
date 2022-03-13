{
  description = ''EDN and Clojure parser'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."edn-master".dir   = "master";
  inputs."edn-master".owner = "nim-nix-pkgs";
  inputs."edn-master".ref   = "master";
  inputs."edn-master".repo  = "edn";
  inputs."edn-master".type  = "github";
  inputs."edn-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."edn-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."edn-0_1_0".dir   = "0_1_0";
  inputs."edn-0_1_0".owner = "nim-nix-pkgs";
  inputs."edn-0_1_0".ref   = "master";
  inputs."edn-0_1_0".repo  = "edn";
  inputs."edn-0_1_0".type  = "github";
  inputs."edn-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."edn-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."edn-0_1_1".dir   = "0_1_1";
  inputs."edn-0_1_1".owner = "nim-nix-pkgs";
  inputs."edn-0_1_1".ref   = "master";
  inputs."edn-0_1_1".repo  = "edn";
  inputs."edn-0_1_1".type  = "github";
  inputs."edn-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."edn-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."edn-0_2_0".dir   = "0_2_0";
  inputs."edn-0_2_0".owner = "nim-nix-pkgs";
  inputs."edn-0_2_0".ref   = "master";
  inputs."edn-0_2_0".repo  = "edn";
  inputs."edn-0_2_0".type  = "github";
  inputs."edn-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."edn-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."edn-0_2_1".dir   = "0_2_1";
  inputs."edn-0_2_1".owner = "nim-nix-pkgs";
  inputs."edn-0_2_1".ref   = "master";
  inputs."edn-0_2_1".repo  = "edn";
  inputs."edn-0_2_1".type  = "github";
  inputs."edn-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."edn-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."edn-0_2_2".dir   = "0_2_2";
  inputs."edn-0_2_2".owner = "nim-nix-pkgs";
  inputs."edn-0_2_2".ref   = "master";
  inputs."edn-0_2_2".repo  = "edn";
  inputs."edn-0_2_2".type  = "github";
  inputs."edn-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."edn-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."edn-0_2_3".dir   = "0_2_3";
  inputs."edn-0_2_3".owner = "nim-nix-pkgs";
  inputs."edn-0_2_3".ref   = "master";
  inputs."edn-0_2_3".repo  = "edn";
  inputs."edn-0_2_3".type  = "github";
  inputs."edn-0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."edn-0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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