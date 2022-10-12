{
  description = ''A Discord Bot & REST Library for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-dimscord-v1_2_5.flake = false;
  inputs.src-dimscord-v1_2_5.ref   = "refs/tags/v1.2.5";
  inputs.src-dimscord-v1_2_5.owner = "krisppurg";
  inputs.src-dimscord-v1_2_5.repo  = "dimscord";
  inputs.src-dimscord-v1_2_5.type  = "github";
  
  inputs."zippy".owner = "nim-nix-pkgs";
  inputs."zippy".ref   = "master";
  inputs."zippy".repo  = "zippy";
  inputs."zippy".dir   = "0_10_4";
  inputs."zippy".type  = "github";
  inputs."zippy".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ws".owner = "nim-nix-pkgs";
  inputs."ws".ref   = "master";
  inputs."ws".repo  = "ws";
  inputs."ws".dir   = "0_4_0";
  inputs."ws".type  = "github";
  inputs."ws".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ws".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."regex".owner = "nim-nix-pkgs";
  inputs."regex".ref   = "master";
  inputs."regex".repo  = "regex";
  inputs."regex".dir   = "v0_20_0";
  inputs."regex".type  = "github";
  inputs."regex".inputs.nixpkgs.follows = "nixpkgs";
  inputs."regex".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libsodium".owner = "nim-nix-pkgs";
  inputs."libsodium".ref   = "master";
  inputs."libsodium".repo  = "libsodium";
  inputs."libsodium".dir   = "0_6_0";
  inputs."libsodium".type  = "github";
  inputs."libsodium".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libsodium".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."flatty".owner = "nim-nix-pkgs";
  inputs."flatty".ref   = "master";
  inputs."flatty".repo  = "flatty";
  inputs."flatty".dir   = "0_3_4";
  inputs."flatty".type  = "github";
  inputs."flatty".inputs.nixpkgs.follows = "nixpkgs";
  inputs."flatty".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-dimscord-v1_2_5"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-dimscord-v1_2_5";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}