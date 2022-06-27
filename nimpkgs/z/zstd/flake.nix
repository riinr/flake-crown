{
  description = ''Bindings for zstd'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."zstd-develop".dir   = "develop";
  inputs."zstd-develop".owner = "nim-nix-pkgs";
  inputs."zstd-develop".ref   = "master";
  inputs."zstd-develop".repo  = "zstd";
  inputs."zstd-develop".type  = "github";
  inputs."zstd-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zstd-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zstd-master".dir   = "master";
  inputs."zstd-master".owner = "nim-nix-pkgs";
  inputs."zstd-master".ref   = "master";
  inputs."zstd-master".repo  = "zstd";
  inputs."zstd-master".type  = "github";
  inputs."zstd-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zstd-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zstd-v0_2".dir   = "v0_2";
  inputs."zstd-v0_2".owner = "nim-nix-pkgs";
  inputs."zstd-v0_2".ref   = "master";
  inputs."zstd-v0_2".repo  = "zstd";
  inputs."zstd-v0_2".type  = "github";
  inputs."zstd-v0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zstd-v0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zstd-v0_3".dir   = "v0_3";
  inputs."zstd-v0_3".owner = "nim-nix-pkgs";
  inputs."zstd-v0_3".ref   = "master";
  inputs."zstd-v0_3".repo  = "zstd";
  inputs."zstd-v0_3".type  = "github";
  inputs."zstd-v0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zstd-v0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zstd-v0_4".dir   = "v0_4";
  inputs."zstd-v0_4".owner = "nim-nix-pkgs";
  inputs."zstd-v0_4".ref   = "master";
  inputs."zstd-v0_4".repo  = "zstd";
  inputs."zstd-v0_4".type  = "github";
  inputs."zstd-v0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zstd-v0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zstd-v0_5".dir   = "v0_5";
  inputs."zstd-v0_5".owner = "nim-nix-pkgs";
  inputs."zstd-v0_5".ref   = "master";
  inputs."zstd-v0_5".repo  = "zstd";
  inputs."zstd-v0_5".type  = "github";
  inputs."zstd-v0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zstd-v0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zstd-v0_6".dir   = "v0_6";
  inputs."zstd-v0_6".owner = "nim-nix-pkgs";
  inputs."zstd-v0_6".ref   = "master";
  inputs."zstd-v0_6".repo  = "zstd";
  inputs."zstd-v0_6".type  = "github";
  inputs."zstd-v0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zstd-v0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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