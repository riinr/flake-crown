{
  description = ''A browser automation library written in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."halonium-master".dir   = "master";
  inputs."halonium-master".owner = "nim-nix-pkgs";
  inputs."halonium-master".ref   = "master";
  inputs."halonium-master".repo  = "halonium";
  inputs."halonium-master".type  = "github";
  inputs."halonium-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."halonium-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."halonium-0_2_3".dir   = "0_2_3";
  inputs."halonium-0_2_3".owner = "nim-nix-pkgs";
  inputs."halonium-0_2_3".ref   = "master";
  inputs."halonium-0_2_3".repo  = "halonium";
  inputs."halonium-0_2_3".type  = "github";
  inputs."halonium-0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."halonium-0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."halonium-0_2_4".dir   = "0_2_4";
  inputs."halonium-0_2_4".owner = "nim-nix-pkgs";
  inputs."halonium-0_2_4".ref   = "master";
  inputs."halonium-0_2_4".repo  = "halonium";
  inputs."halonium-0_2_4".type  = "github";
  inputs."halonium-0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."halonium-0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."halonium-0_2_5".dir   = "0_2_5";
  inputs."halonium-0_2_5".owner = "nim-nix-pkgs";
  inputs."halonium-0_2_5".ref   = "master";
  inputs."halonium-0_2_5".repo  = "halonium";
  inputs."halonium-0_2_5".type  = "github";
  inputs."halonium-0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."halonium-0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."halonium-0_2_6".dir   = "0_2_6";
  inputs."halonium-0_2_6".owner = "nim-nix-pkgs";
  inputs."halonium-0_2_6".ref   = "master";
  inputs."halonium-0_2_6".repo  = "halonium";
  inputs."halonium-0_2_6".type  = "github";
  inputs."halonium-0_2_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."halonium-0_2_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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