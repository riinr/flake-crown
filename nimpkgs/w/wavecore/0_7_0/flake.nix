{
  description = ''Server and client utils for ANSIWAVE BBS'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-wavecore-0_7_0.flake = false;
  inputs.src-wavecore-0_7_0.ref   = "refs/tags/0.7.0";
  inputs.src-wavecore-0_7_0.owner = "ansiwave";
  inputs.src-wavecore-0_7_0.repo  = "wavecore";
  inputs.src-wavecore-0_7_0.type  = "github";
  
  inputs."urlly".owner = "nim-nix-pkgs";
  inputs."urlly".ref   = "master";
  inputs."urlly".repo  = "urlly";
  inputs."urlly".dir   = "1_0_1";
  inputs."urlly".type  = "github";
  inputs."urlly".inputs.nixpkgs.follows = "nixpkgs";
  inputs."urlly".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."puppy".owner = "nim-nix-pkgs";
  inputs."puppy".ref   = "master";
  inputs."puppy".repo  = "puppy";
  inputs."puppy".dir   = "1_6_0";
  inputs."puppy".type  = "github";
  inputs."puppy".inputs.nixpkgs.follows = "nixpkgs";
  inputs."puppy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."flatty".owner = "nim-nix-pkgs";
  inputs."flatty".ref   = "master";
  inputs."flatty".repo  = "flatty";
  inputs."flatty".dir   = "0_3_4";
  inputs."flatty".type  = "github";
  inputs."flatty".inputs.nixpkgs.follows = "nixpkgs";
  inputs."flatty".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy".owner = "nim-nix-pkgs";
  inputs."zippy".ref   = "master";
  inputs."zippy".repo  = "zippy";
  inputs."zippy".dir   = "0_10_4";
  inputs."zippy".type  = "github";
  inputs."zippy".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paramidi".owner = "nim-nix-pkgs";
  inputs."paramidi".ref   = "master";
  inputs."paramidi".repo  = "paramidi";
  inputs."paramidi".dir   = "0_6_0";
  inputs."paramidi".type  = "github";
  inputs."paramidi".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paramidi".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."threading".owner = "nim-nix-pkgs";
  inputs."threading".ref   = "master";
  inputs."threading".repo  = "threading";
  inputs."threading".dir   = "master";
  inputs."threading".type  = "github";
  inputs."threading".inputs.nixpkgs.follows = "nixpkgs";
  inputs."threading".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiutils".owner = "nim-nix-pkgs";
  inputs."ansiutils".ref   = "master";
  inputs."ansiutils".repo  = "ansiutils";
  inputs."ansiutils".dir   = "0_1_0";
  inputs."ansiutils".type  = "github";
  inputs."ansiutils".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiutils".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-wavecore-0_7_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-wavecore-0_7_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}