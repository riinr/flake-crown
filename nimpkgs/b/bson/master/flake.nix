{
  description = ''BSON (Binary Json) serialization'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-bson-master.flake = false;
  inputs.src-bson-master.ref   = "refs/heads/master";
  inputs.src-bson-master.owner = "JohnAD";
  inputs.src-bson-master.repo  = "bson";
  inputs.src-bson-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-bson-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-bson-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}