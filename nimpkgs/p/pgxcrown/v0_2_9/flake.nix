{
  description = ''Build Postgres extensions in Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-pgxcrown-v0_2_9.flake = false;
  inputs.src-pgxcrown-v0_2_9.ref   = "refs/tags/v0.2.9";
  inputs.src-pgxcrown-v0_2_9.owner = "luisacosta828";
  inputs.src-pgxcrown-v0_2_9.repo  = "pgxcrown";
  inputs.src-pgxcrown-v0_2_9.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-pgxcrown-v0_2_9"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-pgxcrown-v0_2_9";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}