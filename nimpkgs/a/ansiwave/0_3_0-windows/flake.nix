{
  description = ''ANSI art + MIDI music editor'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ansiwave-0_3_0-windows.flake = false;
  inputs.src-ansiwave-0_3_0-windows.owner = "ansiwave";
  inputs.src-ansiwave-0_3_0-windows.ref   = "refs/tags/0.3.0-windows";
  inputs.src-ansiwave-0_3_0-windows.repo  = "ansiwave";
  inputs.src-ansiwave-0_3_0-windows.type  = "github";
  
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
  
  inputs."illwill".dir   = "nimpkgs/i/illwill";
  inputs."illwill".owner = "riinr";
  inputs."illwill".ref   = "flake-pinning";
  inputs."illwill".repo  = "flake-nimble";
  inputs."illwill".type  = "github";
  inputs."illwill".inputs.nixpkgs.follows = "nixpkgs";
  inputs."illwill".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy".dir   = "nimpkgs/z/zippy";
  inputs."zippy".owner = "riinr";
  inputs."zippy".ref   = "flake-pinning";
  inputs."zippy".repo  = "flake-nimble";
  inputs."zippy".type  = "github";
  inputs."zippy".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ansiwave-0_3_0-windows"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-ansiwave-0_3_0-windows";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}