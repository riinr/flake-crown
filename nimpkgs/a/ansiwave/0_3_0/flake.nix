{
  description = ''ANSI art + MIDI music'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ansiwave-0_3_0.flake = false;
  inputs.src-ansiwave-0_3_0.ref   = "refs/tags/0.3.0";
  inputs.src-ansiwave-0_3_0.owner = "ansiwave";
  inputs.src-ansiwave-0_3_0.repo  = "ansiwave";
  inputs.src-ansiwave-0_3_0.type  = "github";
  
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
  
  inputs."illwill".owner = "nim-nix-pkgs";
  inputs."illwill".ref   = "master";
  inputs."illwill".repo  = "illwill";
  inputs."illwill".dir   = "v0_3_0";
  inputs."illwill".type  = "github";
  inputs."illwill".inputs.nixpkgs.follows = "nixpkgs";
  inputs."illwill".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy".owner = "nim-nix-pkgs";
  inputs."zippy".ref   = "master";
  inputs."zippy".repo  = "zippy";
  inputs."zippy".dir   = "0_10_3";
  inputs."zippy".type  = "github";
  inputs."zippy".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ansiwave-0_3_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-ansiwave-0_3_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}