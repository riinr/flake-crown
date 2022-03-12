{
  description = ''A simple gap buffer implementation'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-gapbuffer-master.flake = false;
  inputs.src-gapbuffer-master.owner = "vktec";
  inputs.src-gapbuffer-master.ref   = "refs/heads/master";
  inputs.src-gapbuffer-master.repo  = "nim-gapbuffer";
  inputs.src-gapbuffer-master.type  = "other";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-gapbuffer-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-gapbuffer-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}