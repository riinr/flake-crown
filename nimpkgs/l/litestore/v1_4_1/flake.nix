{
  description = ''A lightweight, self-contained, RESTful, searchable, multi-format NoSQL document store'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-litestore-v1_4_1.flake = false;
  inputs.src-litestore-v1_4_1.owner = "h3rald";
  inputs.src-litestore-v1_4_1.ref   = "refs/tags/v1.4.1";
  inputs.src-litestore-v1_4_1.repo  = "litestore";
  inputs.src-litestore-v1_4_1.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-litestore-v1_4_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-litestore-v1_4_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}