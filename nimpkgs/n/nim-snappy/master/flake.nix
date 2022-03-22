{
  description = ''Nim implementation of Snappy compression algorithm'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nim-snappy-master.flake = false;
  inputs.src-nim-snappy-master.owner = "status-im";
  inputs.src-nim-snappy-master.ref   = "master";
  inputs.src-nim-snappy-master.repo  = "nim-snappy";
  inputs.src-nim-snappy-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nim-snappy-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nim-snappy-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}