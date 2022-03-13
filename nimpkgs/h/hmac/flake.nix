{
  description = ''HMAC-SHA1 and HMAC-MD5 hashing in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."hmac-master".dir   = "master";
  inputs."hmac-master".owner = "nim-nix-pkgs";
  inputs."hmac-master".ref   = "master";
  inputs."hmac-master".repo  = "hmac";
  inputs."hmac-master".type  = "github";
  inputs."hmac-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmac-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmac-0_1_1".dir   = "0_1_1";
  inputs."hmac-0_1_1".owner = "nim-nix-pkgs";
  inputs."hmac-0_1_1".ref   = "master";
  inputs."hmac-0_1_1".repo  = "hmac";
  inputs."hmac-0_1_1".type  = "github";
  inputs."hmac-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmac-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmac-0_1_2".dir   = "0_1_2";
  inputs."hmac-0_1_2".owner = "nim-nix-pkgs";
  inputs."hmac-0_1_2".ref   = "master";
  inputs."hmac-0_1_2".repo  = "hmac";
  inputs."hmac-0_1_2".type  = "github";
  inputs."hmac-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmac-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmac-0_1_3".dir   = "0_1_3";
  inputs."hmac-0_1_3".owner = "nim-nix-pkgs";
  inputs."hmac-0_1_3".ref   = "master";
  inputs."hmac-0_1_3".repo  = "hmac";
  inputs."hmac-0_1_3".type  = "github";
  inputs."hmac-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmac-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmac-0_1_4".dir   = "0_1_4";
  inputs."hmac-0_1_4".owner = "nim-nix-pkgs";
  inputs."hmac-0_1_4".ref   = "master";
  inputs."hmac-0_1_4".repo  = "hmac";
  inputs."hmac-0_1_4".type  = "github";
  inputs."hmac-0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmac-0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmac-0_1_5".dir   = "0_1_5";
  inputs."hmac-0_1_5".owner = "nim-nix-pkgs";
  inputs."hmac-0_1_5".ref   = "master";
  inputs."hmac-0_1_5".repo  = "hmac";
  inputs."hmac-0_1_5".type  = "github";
  inputs."hmac-0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmac-0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmac-0_1_6".dir   = "0_1_6";
  inputs."hmac-0_1_6".owner = "nim-nix-pkgs";
  inputs."hmac-0_1_6".ref   = "master";
  inputs."hmac-0_1_6".repo  = "hmac";
  inputs."hmac-0_1_6".type  = "github";
  inputs."hmac-0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmac-0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmac-0_1_7".dir   = "0_1_7";
  inputs."hmac-0_1_7".owner = "nim-nix-pkgs";
  inputs."hmac-0_1_7".ref   = "master";
  inputs."hmac-0_1_7".repo  = "hmac";
  inputs."hmac-0_1_7".type  = "github";
  inputs."hmac-0_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmac-0_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmac-0_1_8".dir   = "0_1_8";
  inputs."hmac-0_1_8".owner = "nim-nix-pkgs";
  inputs."hmac-0_1_8".ref   = "master";
  inputs."hmac-0_1_8".repo  = "hmac";
  inputs."hmac-0_1_8".type  = "github";
  inputs."hmac-0_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmac-0_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmac-0_1_9".dir   = "0_1_9";
  inputs."hmac-0_1_9".owner = "nim-nix-pkgs";
  inputs."hmac-0_1_9".ref   = "master";
  inputs."hmac-0_1_9".repo  = "hmac";
  inputs."hmac-0_1_9".type  = "github";
  inputs."hmac-0_1_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmac-0_1_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmac-0_2_0".dir   = "0_2_0";
  inputs."hmac-0_2_0".owner = "nim-nix-pkgs";
  inputs."hmac-0_2_0".ref   = "master";
  inputs."hmac-0_2_0".repo  = "hmac";
  inputs."hmac-0_2_0".type  = "github";
  inputs."hmac-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmac-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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