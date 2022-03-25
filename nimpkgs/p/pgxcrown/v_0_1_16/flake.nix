{
  description = ''Build Postgres extensions in Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-pgxcrown-v_0_1_16.flake = false;
  inputs.src-pgxcrown-v_0_1_16.ref   = "refs/tags/v.0.1.16";
  inputs.src-pgxcrown-v_0_1_16.owner = "luisacosta828";
  inputs.src-pgxcrown-v_0_1_16.repo  = "pgxcrown";
  inputs.src-pgxcrown-v_0_1_16.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-pgxcrown-v_0_1_16"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-pgxcrown-v_0_1_16";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}