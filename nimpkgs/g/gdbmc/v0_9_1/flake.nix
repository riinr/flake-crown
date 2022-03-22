{
  description = ''This library is a wrapper to C GDBM one'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-gdbmc-v0_9_1.flake = false;
  inputs.src-gdbmc-v0_9_1.owner = "vycb";
  inputs.src-gdbmc-v0_9_1.ref   = "v0_9_1";
  inputs.src-gdbmc-v0_9_1.repo  = "gdbmc.nim";
  inputs.src-gdbmc-v0_9_1.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-gdbmc-v0_9_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-gdbmc-v0_9_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}