{
  description = ''RESP(REdis Serialization Protocol) Serialization for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-redisparser-master.flake = false;
  inputs.src-redisparser-master.owner = "xmonader";
  inputs.src-redisparser-master.ref   = "master";
  inputs.src-redisparser-master.repo  = "nim-redisparser";
  inputs.src-redisparser-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-redisparser-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-redisparser-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}