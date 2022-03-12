{
  description = ''A file system monitor in Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-fsnotify-master.flake = false;
  inputs.src-fsnotify-master.owner = "xflywind";
  inputs.src-fsnotify-master.ref   = "refs/heads/master";
  inputs.src-fsnotify-master.repo  = "fsnotify";
  inputs.src-fsnotify-master.type  = "github";
  
  inputs."timerwheel".dir   = "nimpkgs/t/timerwheel";
  inputs."timerwheel".owner = "riinr";
  inputs."timerwheel".ref   = "flake-pinning";
  inputs."timerwheel".repo  = "flake-nimble";
  inputs."timerwheel".type  = "github";
  inputs."timerwheel".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timerwheel".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xio".dir   = "nimpkgs/x/xio";
  inputs."xio".owner = "riinr";
  inputs."xio".ref   = "flake-pinning";
  inputs."xio".repo  = "flake-nimble";
  inputs."xio".type  = "github";
  inputs."xio".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xio".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-fsnotify-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-fsnotify-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}