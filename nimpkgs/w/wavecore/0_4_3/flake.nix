{
  description = ''Server and client utils for ANSIWAVE BBS'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-wavecore-0_4_3.flake = false;
  inputs.src-wavecore-0_4_3.ref   = "refs/tags/0.4.3";
  inputs.src-wavecore-0_4_3.owner = "ansiwave";
  inputs.src-wavecore-0_4_3.repo  = "wavecore";
  inputs.src-wavecore-0_4_3.type  = "github";
  
  inputs."urlly".owner = "nim-nix-pkgs";
  inputs."urlly".ref   = "master";
  inputs."urlly".repo  = "urlly";
  inputs."urlly".dir   = "1_0_0";
  inputs."urlly".type  = "github";
  inputs."urlly".inputs.nixpkgs.follows = "nixpkgs";
  inputs."urlly".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."puppy".owner = "nim-nix-pkgs";
  inputs."puppy".ref   = "master";
  inputs."puppy".repo  = "puppy";
  inputs."puppy".dir   = "1_5_3";
  inputs."puppy".type  = "github";
  inputs."puppy".inputs.nixpkgs.follows = "nixpkgs";
  inputs."puppy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."flatty".owner = "nim-nix-pkgs";
  inputs."flatty".ref   = "master";
  inputs."flatty".repo  = "flatty";
  inputs."flatty".dir   = "0_2_4";
  inputs."flatty".type  = "github";
  inputs."flatty".inputs.nixpkgs.follows = "nixpkgs";
  inputs."flatty".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy".owner = "nim-nix-pkgs";
  inputs."zippy".ref   = "master";
  inputs."zippy".repo  = "zippy";
  inputs."zippy".dir   = "0_9_7";
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
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-wavecore-0_4_3"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-wavecore-0_4_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}