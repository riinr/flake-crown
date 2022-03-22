{
  description = ''MessagePack serializer/deserializer implementation in nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-msgpack4nim-master.flake = false;
  inputs.src-msgpack4nim-master.owner = "jangko";
  inputs.src-msgpack4nim-master.ref   = "master";
  inputs.src-msgpack4nim-master.repo  = "msgpack4nim";
  inputs.src-msgpack4nim-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-msgpack4nim-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-msgpack4nim-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}