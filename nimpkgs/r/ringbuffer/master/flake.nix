{
  description = ''Circular buffer implementation'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-RingBuffer-master.flake = false;
  inputs.src-RingBuffer-master.owner = "megawac";
  inputs.src-RingBuffer-master.ref   = "refs/heads/master";
  inputs.src-RingBuffer-master.repo  = "RingBuffer.nim";
  inputs.src-RingBuffer-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-RingBuffer-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-RingBuffer-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}