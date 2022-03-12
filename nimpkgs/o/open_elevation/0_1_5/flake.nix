{
  description = ''OpenStreetMap Elevation API MultiSync Client for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-open_elevation-0_1_5.flake = false;
  inputs.src-open_elevation-0_1_5.owner = "juancarlospaco";
  inputs.src-open_elevation-0_1_5.ref   = "refs/tags/0.1.5";
  inputs.src-open_elevation-0_1_5.repo  = "nim-open-elevation";
  inputs.src-open_elevation-0_1_5.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-open_elevation-0_1_5"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-open_elevation-0_1_5";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}