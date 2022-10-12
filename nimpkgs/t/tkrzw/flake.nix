{
  description = ''Wrappers over the Tkrzw Database Manager C++ library.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."tkrzw-trunk".dir   = "trunk";
  inputs."tkrzw-trunk".owner = "nim-nix-pkgs";
  inputs."tkrzw-trunk".ref   = "master";
  inputs."tkrzw-trunk".repo  = "tkrzw";
  inputs."tkrzw-trunk".type  = "github";
  inputs."tkrzw-trunk".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tkrzw-trunk".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."tkrzw-20210817".dir   = "20210817";
  inputs."tkrzw-20210817".owner = "nim-nix-pkgs";
  inputs."tkrzw-20210817".ref   = "master";
  inputs."tkrzw-20210817".repo  = "tkrzw";
  inputs."tkrzw-20210817".type  = "github";
  inputs."tkrzw-20210817".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tkrzw-20210817".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."tkrzw-20220830".dir   = "20220830";
  inputs."tkrzw-20220830".owner = "nim-nix-pkgs";
  inputs."tkrzw-20220830".ref   = "master";
  inputs."tkrzw-20220830".repo  = "tkrzw";
  inputs."tkrzw-20220830".type  = "github";
  inputs."tkrzw-20220830".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tkrzw-20220830".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."tkrzw-20220910".dir   = "20220910";
  inputs."tkrzw-20220910".owner = "nim-nix-pkgs";
  inputs."tkrzw-20220910".ref   = "master";
  inputs."tkrzw-20220910".repo  = "tkrzw";
  inputs."tkrzw-20220910".type  = "github";
  inputs."tkrzw-20220910".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tkrzw-20220910".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."tkrzw-20220922".dir   = "20220922";
  inputs."tkrzw-20220922".owner = "nim-nix-pkgs";
  inputs."tkrzw-20220922".ref   = "master";
  inputs."tkrzw-20220922".repo  = "tkrzw";
  inputs."tkrzw-20220922".type  = "github";
  inputs."tkrzw-20220922".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tkrzw-20220922".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."tkrzw-v0_1_0".dir   = "v0_1_0";
  inputs."tkrzw-v0_1_0".owner = "nim-nix-pkgs";
  inputs."tkrzw-v0_1_0".ref   = "master";
  inputs."tkrzw-v0_1_0".repo  = "tkrzw";
  inputs."tkrzw-v0_1_0".type  = "github";
  inputs."tkrzw-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tkrzw-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."tkrzw-v0_1_1".dir   = "v0_1_1";
  inputs."tkrzw-v0_1_1".owner = "nim-nix-pkgs";
  inputs."tkrzw-v0_1_1".ref   = "master";
  inputs."tkrzw-v0_1_1".repo  = "tkrzw";
  inputs."tkrzw-v0_1_1".type  = "github";
  inputs."tkrzw-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tkrzw-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."tkrzw-v0_1_2".dir   = "v0_1_2";
  inputs."tkrzw-v0_1_2".owner = "nim-nix-pkgs";
  inputs."tkrzw-v0_1_2".ref   = "master";
  inputs."tkrzw-v0_1_2".repo  = "tkrzw";
  inputs."tkrzw-v0_1_2".type  = "github";
  inputs."tkrzw-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tkrzw-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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