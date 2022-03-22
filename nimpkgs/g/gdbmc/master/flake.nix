{
  description = ''This library is a wrapper to C GDBM one'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-gdbmc-master.flake = false;
  inputs.src-gdbmc-master.owner = "vycb";
  inputs.src-gdbmc-master.ref   = "master";
  inputs.src-gdbmc-master.repo  = "gdbmc.nim";
  inputs.src-gdbmc-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-gdbmc-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-gdbmc-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}