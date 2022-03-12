{
  description = ''RESP(REdis Serialization Protocol) Serialization for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-redisparser-0_1_1.flake = false;
  inputs.src-redisparser-0_1_1.owner = "xmonader";
  inputs.src-redisparser-0_1_1.ref   = "refs/tags/0.1.1";
  inputs.src-redisparser-0_1_1.repo  = "nim-redisparser";
  inputs.src-redisparser-0_1_1.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-redisparser-0_1_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-redisparser-0_1_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}