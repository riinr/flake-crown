{
  description = ''A file system monitor in Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-fsnotify-master.flake = false;
  inputs.src-fsnotify-master.ref   = "refs/heads/master";
  inputs.src-fsnotify-master.owner = "xflywind";
  inputs.src-fsnotify-master.repo  = "fsnotify";
  inputs.src-fsnotify-master.type  = "github";
  
  inputs."timerwheel".owner = "nim-nix-pkgs";
  inputs."timerwheel".ref   = "master";
  inputs."timerwheel".repo  = "timerwheel";
  inputs."timerwheel".dir   = "v0_1_2";
  inputs."timerwheel".type  = "github";
  inputs."timerwheel".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timerwheel".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xio".owner = "nim-nix-pkgs";
  inputs."xio".ref   = "master";
  inputs."xio".repo  = "xio";
  inputs."xio".dir   = "master";
  inputs."xio".type  = "github";
  inputs."xio".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xio".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-fsnotify-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-fsnotify-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}