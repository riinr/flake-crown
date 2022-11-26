{
  description = ''A wrapper for libdeflate'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."libdeflate_gzip-master".dir   = "master";
  inputs."libdeflate_gzip-master".owner = "nim-nix-pkgs";
  inputs."libdeflate_gzip-master".ref   = "master";
  inputs."libdeflate_gzip-master".repo  = "libdeflate_gzip";
  inputs."libdeflate_gzip-master".type  = "github";
  inputs."libdeflate_gzip-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libdeflate_gzip-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libdeflate_gzip-v0_1_0".dir   = "v0_1_0";
  inputs."libdeflate_gzip-v0_1_0".owner = "nim-nix-pkgs";
  inputs."libdeflate_gzip-v0_1_0".ref   = "master";
  inputs."libdeflate_gzip-v0_1_0".repo  = "libdeflate_gzip";
  inputs."libdeflate_gzip-v0_1_0".type  = "github";
  inputs."libdeflate_gzip-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libdeflate_gzip-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libdeflate_gzip-v0_2_0".dir   = "v0_2_0";
  inputs."libdeflate_gzip-v0_2_0".owner = "nim-nix-pkgs";
  inputs."libdeflate_gzip-v0_2_0".ref   = "master";
  inputs."libdeflate_gzip-v0_2_0".repo  = "libdeflate_gzip";
  inputs."libdeflate_gzip-v0_2_0".type  = "github";
  inputs."libdeflate_gzip-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libdeflate_gzip-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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