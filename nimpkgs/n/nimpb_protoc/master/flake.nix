{
  description = ''Protocol Buffers compiler for nimpb'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimpb_protoc-master.flake = false;
  inputs.src-nimpb_protoc-master.owner = "oswjk";
  inputs.src-nimpb_protoc-master.ref   = "master";
  inputs.src-nimpb_protoc-master.repo  = "nimpb_protoc";
  inputs.src-nimpb_protoc-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimpb_protoc-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimpb_protoc-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}