{
  description = ''Build Postgres extensions in Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-pgxcrown-v0_3_7.flake = false;
  inputs.src-pgxcrown-v0_3_7.owner = "luisacosta828";
  inputs.src-pgxcrown-v0_3_7.ref   = "refs/tags/v0.3.7";
  inputs.src-pgxcrown-v0_3_7.repo  = "pgxcrown";
  inputs.src-pgxcrown-v0_3_7.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-pgxcrown-v0_3_7"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-pgxcrown-v0_3_7";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}