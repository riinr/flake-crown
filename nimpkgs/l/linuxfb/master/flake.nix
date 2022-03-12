{
  description = ''Wrapper around the Linux framebuffer driver ioctl API'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-linuxfb-master.flake = false;
  inputs.src-linuxfb-master.owner = "luked99";
  inputs.src-linuxfb-master.ref   = "refs/heads/master";
  inputs.src-linuxfb-master.repo  = "linuxfb.nim";
  inputs.src-linuxfb-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-linuxfb-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-linuxfb-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}