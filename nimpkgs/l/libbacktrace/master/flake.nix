{
  description = ''Nim wrapper for libbacktrace'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-libbacktrace-master.flake = false;
  inputs.src-libbacktrace-master.ref   = "refs/heads/master";
  inputs.src-libbacktrace-master.owner = "status-im";
  inputs.src-libbacktrace-master.repo  = "nim-libbacktrace";
  inputs.src-libbacktrace-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-libbacktrace-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-libbacktrace-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}