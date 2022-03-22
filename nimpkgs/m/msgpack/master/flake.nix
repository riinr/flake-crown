{
  description = ''A MessagePack binding for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-msgpack-master.flake = false;
  inputs.src-msgpack-master.ref   = "refs/heads/master";
  inputs.src-msgpack-master.owner = "akiradeveloper";
  inputs.src-msgpack-master.repo  = "msgpack-nim";
  inputs.src-msgpack-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-msgpack-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-msgpack-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}