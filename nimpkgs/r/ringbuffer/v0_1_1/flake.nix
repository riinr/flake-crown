{
  description = ''Circular buffer implementation'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-RingBuffer-v0_1_1.flake = false;
  inputs.src-RingBuffer-v0_1_1.owner = "megawac";
  inputs.src-RingBuffer-v0_1_1.ref   = "refs/tags/v0.1.1";
  inputs.src-RingBuffer-v0_1_1.repo  = "RingBuffer.nim";
  inputs.src-RingBuffer-v0_1_1.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-RingBuffer-v0_1_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-RingBuffer-v0_1_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}