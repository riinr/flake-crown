{
  description = ''AST for various languages'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."hasts-master".dir   = "master";
  inputs."hasts-master".owner = "nim-nix-pkgs";
  inputs."hasts-master".ref   = "master";
  inputs."hasts-master".repo  = "hasts";
  inputs."hasts-master".type  = "github";
  inputs."hasts-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hasts-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hasts-v0_1_1".dir   = "v0_1_1";
  inputs."hasts-v0_1_1".owner = "nim-nix-pkgs";
  inputs."hasts-v0_1_1".ref   = "master";
  inputs."hasts-v0_1_1".repo  = "hasts";
  inputs."hasts-v0_1_1".type  = "github";
  inputs."hasts-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hasts-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hasts-v0_1_2".dir   = "v0_1_2";
  inputs."hasts-v0_1_2".owner = "nim-nix-pkgs";
  inputs."hasts-v0_1_2".ref   = "master";
  inputs."hasts-v0_1_2".repo  = "hasts";
  inputs."hasts-v0_1_2".type  = "github";
  inputs."hasts-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hasts-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hasts-v0_1_3".dir   = "v0_1_3";
  inputs."hasts-v0_1_3".owner = "nim-nix-pkgs";
  inputs."hasts-v0_1_3".ref   = "master";
  inputs."hasts-v0_1_3".repo  = "hasts";
  inputs."hasts-v0_1_3".type  = "github";
  inputs."hasts-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hasts-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hasts-v0_1_4".dir   = "v0_1_4";
  inputs."hasts-v0_1_4".owner = "nim-nix-pkgs";
  inputs."hasts-v0_1_4".ref   = "master";
  inputs."hasts-v0_1_4".repo  = "hasts";
  inputs."hasts-v0_1_4".type  = "github";
  inputs."hasts-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hasts-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hasts-v0_1_5".dir   = "v0_1_5";
  inputs."hasts-v0_1_5".owner = "nim-nix-pkgs";
  inputs."hasts-v0_1_5".ref   = "master";
  inputs."hasts-v0_1_5".repo  = "hasts";
  inputs."hasts-v0_1_5".type  = "github";
  inputs."hasts-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hasts-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hasts-v0_1_6".dir   = "v0_1_6";
  inputs."hasts-v0_1_6".owner = "nim-nix-pkgs";
  inputs."hasts-v0_1_6".ref   = "master";
  inputs."hasts-v0_1_6".repo  = "hasts";
  inputs."hasts-v0_1_6".type  = "github";
  inputs."hasts-v0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hasts-v0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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