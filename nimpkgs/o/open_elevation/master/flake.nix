{
  description = ''OpenStreetMap Elevation API MultiSync Client for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-open_elevation-master.flake = false;
  inputs.src-open_elevation-master.owner = "juancarlospaco";
  inputs.src-open_elevation-master.ref   = "refs/heads/master";
  inputs.src-open_elevation-master.repo  = "nim-open-elevation";
  inputs.src-open_elevation-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-open_elevation-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-open_elevation-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}