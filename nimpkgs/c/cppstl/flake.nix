{
  description = ''Bindings for the C++ Standard Template Library (STL)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."cppstl-master".dir   = "master";
  inputs."cppstl-master".owner = "nim-nix-pkgs";
  inputs."cppstl-master".ref   = "master";
  inputs."cppstl-master".repo  = "cppstl";
  inputs."cppstl-master".type  = "github";
  inputs."cppstl-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cppstl-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cppstl-v0_2_2".dir   = "v0_2_2";
  inputs."cppstl-v0_2_2".owner = "nim-nix-pkgs";
  inputs."cppstl-v0_2_2".ref   = "master";
  inputs."cppstl-v0_2_2".repo  = "cppstl";
  inputs."cppstl-v0_2_2".type  = "github";
  inputs."cppstl-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cppstl-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cppstl-v0_3_0".dir   = "v0_3_0";
  inputs."cppstl-v0_3_0".owner = "nim-nix-pkgs";
  inputs."cppstl-v0_3_0".ref   = "master";
  inputs."cppstl-v0_3_0".repo  = "cppstl";
  inputs."cppstl-v0_3_0".type  = "github";
  inputs."cppstl-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cppstl-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cppstl-v0_3_1".dir   = "v0_3_1";
  inputs."cppstl-v0_3_1".owner = "nim-nix-pkgs";
  inputs."cppstl-v0_3_1".ref   = "master";
  inputs."cppstl-v0_3_1".repo  = "cppstl";
  inputs."cppstl-v0_3_1".type  = "github";
  inputs."cppstl-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cppstl-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cppstl-v0_4_0".dir   = "v0_4_0";
  inputs."cppstl-v0_4_0".owner = "nim-nix-pkgs";
  inputs."cppstl-v0_4_0".ref   = "master";
  inputs."cppstl-v0_4_0".repo  = "cppstl";
  inputs."cppstl-v0_4_0".type  = "github";
  inputs."cppstl-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cppstl-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cppstl-v0_4_1".dir   = "v0_4_1";
  inputs."cppstl-v0_4_1".owner = "nim-nix-pkgs";
  inputs."cppstl-v0_4_1".ref   = "master";
  inputs."cppstl-v0_4_1".repo  = "cppstl";
  inputs."cppstl-v0_4_1".type  = "github";
  inputs."cppstl-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cppstl-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cppstl-v0_5_0".dir   = "v0_5_0";
  inputs."cppstl-v0_5_0".owner = "nim-nix-pkgs";
  inputs."cppstl-v0_5_0".ref   = "master";
  inputs."cppstl-v0_5_0".repo  = "cppstl";
  inputs."cppstl-v0_5_0".type  = "github";
  inputs."cppstl-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cppstl-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cppstl-v0_6_0".dir   = "v0_6_0";
  inputs."cppstl-v0_6_0".owner = "nim-nix-pkgs";
  inputs."cppstl-v0_6_0".ref   = "master";
  inputs."cppstl-v0_6_0".repo  = "cppstl";
  inputs."cppstl-v0_6_0".type  = "github";
  inputs."cppstl-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cppstl-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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