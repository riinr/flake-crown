{
  description = ''Nim wrapper for libbacktrace'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."libbacktrace-master".dir   = "master";
  inputs."libbacktrace-master".owner = "nim-nix-pkgs";
  inputs."libbacktrace-master".ref   = "master";
  inputs."libbacktrace-master".repo  = "libbacktrace";
  inputs."libbacktrace-master".type  = "github";
  inputs."libbacktrace-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libbacktrace-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libbacktrace-v0_0_2".dir   = "v0_0_2";
  inputs."libbacktrace-v0_0_2".owner = "nim-nix-pkgs";
  inputs."libbacktrace-v0_0_2".ref   = "master";
  inputs."libbacktrace-v0_0_2".repo  = "libbacktrace";
  inputs."libbacktrace-v0_0_2".type  = "github";
  inputs."libbacktrace-v0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libbacktrace-v0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libbacktrace-v0_0_3".dir   = "v0_0_3";
  inputs."libbacktrace-v0_0_3".owner = "nim-nix-pkgs";
  inputs."libbacktrace-v0_0_3".ref   = "master";
  inputs."libbacktrace-v0_0_3".repo  = "libbacktrace";
  inputs."libbacktrace-v0_0_3".type  = "github";
  inputs."libbacktrace-v0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libbacktrace-v0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libbacktrace-v0_0_4".dir   = "v0_0_4";
  inputs."libbacktrace-v0_0_4".owner = "nim-nix-pkgs";
  inputs."libbacktrace-v0_0_4".ref   = "master";
  inputs."libbacktrace-v0_0_4".repo  = "libbacktrace";
  inputs."libbacktrace-v0_0_4".type  = "github";
  inputs."libbacktrace-v0_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libbacktrace-v0_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libbacktrace-v0_0_5".dir   = "v0_0_5";
  inputs."libbacktrace-v0_0_5".owner = "nim-nix-pkgs";
  inputs."libbacktrace-v0_0_5".ref   = "master";
  inputs."libbacktrace-v0_0_5".repo  = "libbacktrace";
  inputs."libbacktrace-v0_0_5".type  = "github";
  inputs."libbacktrace-v0_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libbacktrace-v0_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libbacktrace-v0_0_6".dir   = "v0_0_6";
  inputs."libbacktrace-v0_0_6".owner = "nim-nix-pkgs";
  inputs."libbacktrace-v0_0_6".ref   = "master";
  inputs."libbacktrace-v0_0_6".repo  = "libbacktrace";
  inputs."libbacktrace-v0_0_6".type  = "github";
  inputs."libbacktrace-v0_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libbacktrace-v0_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libbacktrace-v0_0_7".dir   = "v0_0_7";
  inputs."libbacktrace-v0_0_7".owner = "nim-nix-pkgs";
  inputs."libbacktrace-v0_0_7".ref   = "master";
  inputs."libbacktrace-v0_0_7".repo  = "libbacktrace";
  inputs."libbacktrace-v0_0_7".type  = "github";
  inputs."libbacktrace-v0_0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libbacktrace-v0_0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libbacktrace-v0_0_8".dir   = "v0_0_8";
  inputs."libbacktrace-v0_0_8".owner = "nim-nix-pkgs";
  inputs."libbacktrace-v0_0_8".ref   = "master";
  inputs."libbacktrace-v0_0_8".repo  = "libbacktrace";
  inputs."libbacktrace-v0_0_8".type  = "github";
  inputs."libbacktrace-v0_0_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libbacktrace-v0_0_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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