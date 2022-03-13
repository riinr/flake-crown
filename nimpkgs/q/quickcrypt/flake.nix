{
  description = ''A library for quickly and easily encrypting strings & files. User-friendly and highly compatible.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."quickcrypt-master".dir   = "master";
  inputs."quickcrypt-master".owner = "nim-nix-pkgs";
  inputs."quickcrypt-master".ref   = "master";
  inputs."quickcrypt-master".repo  = "quickcrypt";
  inputs."quickcrypt-master".type  = "github";
  inputs."quickcrypt-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."quickcrypt-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."quickcrypt-0_1_0".dir   = "0_1_0";
  inputs."quickcrypt-0_1_0".owner = "nim-nix-pkgs";
  inputs."quickcrypt-0_1_0".ref   = "master";
  inputs."quickcrypt-0_1_0".repo  = "quickcrypt";
  inputs."quickcrypt-0_1_0".type  = "github";
  inputs."quickcrypt-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."quickcrypt-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."quickcrypt-0_1_1".dir   = "0_1_1";
  inputs."quickcrypt-0_1_1".owner = "nim-nix-pkgs";
  inputs."quickcrypt-0_1_1".ref   = "master";
  inputs."quickcrypt-0_1_1".repo  = "quickcrypt";
  inputs."quickcrypt-0_1_1".type  = "github";
  inputs."quickcrypt-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."quickcrypt-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."quickcrypt-0_1_2".dir   = "0_1_2";
  inputs."quickcrypt-0_1_2".owner = "nim-nix-pkgs";
  inputs."quickcrypt-0_1_2".ref   = "master";
  inputs."quickcrypt-0_1_2".repo  = "quickcrypt";
  inputs."quickcrypt-0_1_2".type  = "github";
  inputs."quickcrypt-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."quickcrypt-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."quickcrypt-0_1_3".dir   = "0_1_3";
  inputs."quickcrypt-0_1_3".owner = "nim-nix-pkgs";
  inputs."quickcrypt-0_1_3".ref   = "master";
  inputs."quickcrypt-0_1_3".repo  = "quickcrypt";
  inputs."quickcrypt-0_1_3".type  = "github";
  inputs."quickcrypt-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."quickcrypt-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."quickcrypt-0_1_4".dir   = "0_1_4";
  inputs."quickcrypt-0_1_4".owner = "nim-nix-pkgs";
  inputs."quickcrypt-0_1_4".ref   = "master";
  inputs."quickcrypt-0_1_4".repo  = "quickcrypt";
  inputs."quickcrypt-0_1_4".type  = "github";
  inputs."quickcrypt-0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."quickcrypt-0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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