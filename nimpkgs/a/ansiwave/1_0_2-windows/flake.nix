{
  description = ''ANSI art + MIDI music'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ansiwave-1_0_2-windows.flake = false;
  inputs.src-ansiwave-1_0_2-windows.ref   = "refs/tags/1.0.2-windows";
  inputs.src-ansiwave-1_0_2-windows.owner = "ansiwave";
  inputs.src-ansiwave-1_0_2-windows.repo  = "ansiwave";
  inputs.src-ansiwave-1_0_2-windows.type  = "github";
  
  inputs."pararules".owner = "nim-nix-pkgs";
  inputs."pararules".ref   = "master";
  inputs."pararules".repo  = "pararules";
  inputs."pararules".dir   = "1_1_0";
  inputs."pararules".type  = "github";
  inputs."pararules".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pararules".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paramidi".owner = "nim-nix-pkgs";
  inputs."paramidi".ref   = "master";
  inputs."paramidi".repo  = "paramidi";
  inputs."paramidi".dir   = "0_6_0";
  inputs."paramidi".type  = "github";
  inputs."paramidi".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paramidi".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paramidi_soundfonts".owner = "nim-nix-pkgs";
  inputs."paramidi_soundfonts".ref   = "master";
  inputs."paramidi_soundfonts".repo  = "paramidi_soundfonts";
  inputs."paramidi_soundfonts".dir   = "0_2_0";
  inputs."paramidi_soundfonts".type  = "github";
  inputs."paramidi_soundfonts".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paramidi_soundfonts".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."parasound".owner = "nim-nix-pkgs";
  inputs."parasound".ref   = "master";
  inputs."parasound".repo  = "parasound";
  inputs."parasound".dir   = "1_0_0";
  inputs."parasound".type  = "github";
  inputs."parasound".inputs.nixpkgs.follows = "nixpkgs";
  inputs."parasound".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy".owner = "nim-nix-pkgs";
  inputs."zippy".ref   = "master";
  inputs."zippy".repo  = "zippy";
  inputs."zippy".dir   = "0_10_3";
  inputs."zippy".type  = "github";
  inputs."zippy".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stb_image".owner = "nim-nix-pkgs";
  inputs."stb_image".ref   = "master";
  inputs."stb_image".repo  = "stb_image";
  inputs."stb_image".dir   = "2_5";
  inputs."stb_image".type  = "github";
  inputs."stb_image".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stb_image".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wavecore".owner = "nim-nix-pkgs";
  inputs."wavecore".ref   = "master";
  inputs."wavecore".repo  = "wavecore";
  inputs."wavecore".dir   = "0_7_1";
  inputs."wavecore".type  = "github";
  inputs."wavecore".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wavecore".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chrono".owner = "nim-nix-pkgs";
  inputs."chrono".ref   = "master";
  inputs."chrono".repo  = "chrono";
  inputs."chrono".dir   = "0_3_0";
  inputs."chrono".type  = "github";
  inputs."chrono".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chrono".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ansiwave-1_0_2-windows"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-ansiwave-1_0_2-windows";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}