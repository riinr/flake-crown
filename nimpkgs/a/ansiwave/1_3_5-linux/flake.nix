{
  description = ''ANSI art + MIDI music editor'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ansiwave-1_3_5-linux.flake = false;
  inputs.src-ansiwave-1_3_5-linux.owner = "ansiwave";
  inputs.src-ansiwave-1_3_5-linux.ref   = "refs/tags/1.3.5-linux";
  inputs.src-ansiwave-1_3_5-linux.repo  = "ansiwave";
  inputs.src-ansiwave-1_3_5-linux.type  = "github";
  
  inputs."pararules".dir   = "nimpkgs/p/pararules";
  inputs."pararules".owner = "riinr";
  inputs."pararules".ref   = "flake-pinning";
  inputs."pararules".repo  = "flake-nimble";
  inputs."pararules".type  = "github";
  inputs."pararules".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pararules".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paramidi".dir   = "nimpkgs/p/paramidi";
  inputs."paramidi".owner = "riinr";
  inputs."paramidi".ref   = "flake-pinning";
  inputs."paramidi".repo  = "flake-nimble";
  inputs."paramidi".type  = "github";
  inputs."paramidi".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paramidi".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paramidi_soundfonts".dir   = "nimpkgs/p/paramidi_soundfonts";
  inputs."paramidi_soundfonts".owner = "riinr";
  inputs."paramidi_soundfonts".ref   = "flake-pinning";
  inputs."paramidi_soundfonts".repo  = "flake-nimble";
  inputs."paramidi_soundfonts".type  = "github";
  inputs."paramidi_soundfonts".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paramidi_soundfonts".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."parasound".dir   = "nimpkgs/p/parasound";
  inputs."parasound".owner = "riinr";
  inputs."parasound".ref   = "flake-pinning";
  inputs."parasound".repo  = "flake-nimble";
  inputs."parasound".type  = "github";
  inputs."parasound".inputs.nixpkgs.follows = "nixpkgs";
  inputs."parasound".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy".dir   = "nimpkgs/z/zippy";
  inputs."zippy".owner = "riinr";
  inputs."zippy".ref   = "flake-pinning";
  inputs."zippy".repo  = "flake-nimble";
  inputs."zippy".type  = "github";
  inputs."zippy".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stb_image".dir   = "nimpkgs/s/stb_image";
  inputs."stb_image".owner = "riinr";
  inputs."stb_image".ref   = "flake-pinning";
  inputs."stb_image".repo  = "flake-nimble";
  inputs."stb_image".type  = "github";
  inputs."stb_image".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stb_image".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wavecore".dir   = "nimpkgs/w/wavecore";
  inputs."wavecore".owner = "riinr";
  inputs."wavecore".ref   = "flake-pinning";
  inputs."wavecore".repo  = "flake-nimble";
  inputs."wavecore".type  = "github";
  inputs."wavecore".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wavecore".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chrono".dir   = "nimpkgs/c/chrono";
  inputs."chrono".owner = "riinr";
  inputs."chrono".ref   = "flake-pinning";
  inputs."chrono".repo  = "flake-nimble";
  inputs."chrono".type  = "github";
  inputs."chrono".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chrono".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ansiwave-1_3_5-linux"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-ansiwave-1_3_5-linux";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}