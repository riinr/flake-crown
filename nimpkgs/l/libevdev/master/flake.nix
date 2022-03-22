{
  description = ''Wrapper for <linux/fb.h> framebuffer ioctls'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-libevdev-master.flake = false;
  inputs.src-libevdev-master.ref   = "refs/heads/master";
  inputs.src-libevdev-master.owner = "luked99";
  inputs.src-libevdev-master.repo  = "libevdev.nim";
  inputs.src-libevdev-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-libevdev-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-libevdev-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}