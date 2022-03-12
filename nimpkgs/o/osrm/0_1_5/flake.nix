{
  description = ''Open Source Routing Machine for OpenStreetMap API Lib and App'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-osrm-0_1_5.flake = false;
  inputs.src-osrm-0_1_5.owner = "juancarlospaco";
  inputs.src-osrm-0_1_5.ref   = "refs/tags/0.1.5";
  inputs.src-osrm-0_1_5.repo  = "nim-osrm";
  inputs.src-osrm-0_1_5.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-osrm-0_1_5"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-osrm-0_1_5";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}