{
  description = ''Nim wrapper for the snappy compression library. there is also a high-level API for easy use'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimsnappy-master.flake = false;
  inputs.src-nimsnappy-master.owner = "dfdeshom";
  inputs.src-nimsnappy-master.ref   = "refs/heads/master";
  inputs.src-nimsnappy-master.repo  = "nimsnappy";
  inputs.src-nimsnappy-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimsnappy-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimsnappy-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}