{
  description = ''Rapid serial text presenter'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."hottext-trunk".dir   = "trunk";
  inputs."hottext-trunk".owner = "nim-nix-pkgs";
  inputs."hottext-trunk".ref   = "master";
  inputs."hottext-trunk".repo  = "hottext";
  inputs."hottext-trunk".type  = "github";
  inputs."hottext-trunk".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hottext-trunk".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hottext-v1_2".dir   = "v1_2";
  inputs."hottext-v1_2".owner = "nim-nix-pkgs";
  inputs."hottext-v1_2".ref   = "master";
  inputs."hottext-v1_2".repo  = "hottext";
  inputs."hottext-v1_2".type  = "github";
  inputs."hottext-v1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hottext-v1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hottext-v1_3".dir   = "v1_3";
  inputs."hottext-v1_3".owner = "nim-nix-pkgs";
  inputs."hottext-v1_3".ref   = "master";
  inputs."hottext-v1_3".repo  = "hottext";
  inputs."hottext-v1_3".type  = "github";
  inputs."hottext-v1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hottext-v1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hottext-v1_4".dir   = "v1_4";
  inputs."hottext-v1_4".owner = "nim-nix-pkgs";
  inputs."hottext-v1_4".ref   = "master";
  inputs."hottext-v1_4".repo  = "hottext";
  inputs."hottext-v1_4".type  = "github";
  inputs."hottext-v1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hottext-v1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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