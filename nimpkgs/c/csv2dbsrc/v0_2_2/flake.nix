{
  description = ''create db util sources from csv'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-csv2dbsrc-v0_2_2.flake = false;
  inputs.src-csv2dbsrc-v0_2_2.ref   = "refs/tags/v0.2.2";
  inputs.src-csv2dbsrc-v0_2_2.owner = "z-kk";
  inputs.src-csv2dbsrc-v0_2_2.repo  = "csv2dbsrc";
  inputs.src-csv2dbsrc-v0_2_2.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-csv2dbsrc-v0_2_2"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-csv2dbsrc-v0_2_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}