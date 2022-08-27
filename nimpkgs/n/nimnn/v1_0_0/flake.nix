{
  description = ''Neural Networks from scratch'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-NimNN-v1_0_0.flake = false;
  inputs.src-NimNN-v1_0_0.ref   = "refs/tags/v1.0.0";
  inputs.src-NimNN-v1_0_0.owner = "xcodz-dot";
  inputs.src-NimNN-v1_0_0.repo  = "NimNN";
  inputs.src-NimNN-v1_0_0.type  = "github";
  
  inputs."argparse".owner = "nim-nix-pkgs";
  inputs."argparse".ref   = "master";
  inputs."argparse".repo  = "argparse";
  inputs."argparse".dir   = "v3_0_0";
  inputs."argparse".type  = "github";
  inputs."argparse".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argparse".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."progress".owner = "nim-nix-pkgs";
  inputs."progress".ref   = "master";
  inputs."progress".repo  = "progress";
  inputs."progress".dir   = "v1_1_3";
  inputs."progress".type  = "github";
  inputs."progress".inputs.nixpkgs.follows = "nixpkgs";
  inputs."progress".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sdl2".owner = "nim-nix-pkgs";
  inputs."sdl2".ref   = "master";
  inputs."sdl2".repo  = "sdl2";
  inputs."sdl2".dir   = "v2_0_3";
  inputs."sdl2".type  = "github";
  inputs."sdl2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sdl2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."therapist".owner = "nim-nix-pkgs";
  inputs."therapist".ref   = "master";
  inputs."therapist".repo  = "therapist";
  inputs."therapist".dir   = "v0_2_0";
  inputs."therapist".type  = "github";
  inputs."therapist".inputs.nixpkgs.follows = "nixpkgs";
  inputs."therapist".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-NimNN-v1_0_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-NimNN-v1_0_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}