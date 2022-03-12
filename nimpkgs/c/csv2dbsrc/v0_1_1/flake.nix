{
  description = ''create db util sources from csv'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-csv2dbsrc-v0_1_1.flake = false;
  inputs.src-csv2dbsrc-v0_1_1.owner = "z-kk";
  inputs.src-csv2dbsrc-v0_1_1.ref   = "refs/tags/v0.1.1";
  inputs.src-csv2dbsrc-v0_1_1.repo  = "csv2dbsrc";
  inputs.src-csv2dbsrc-v0_1_1.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-csv2dbsrc-v0_1_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-csv2dbsrc-v0_1_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}