{
  description = ''Open Source Routing Machine for OpenStreetMap API Lib and App'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-osrm-master.flake = false;
  inputs.src-osrm-master.owner = "juancarlospaco";
  inputs.src-osrm-master.ref   = "refs/heads/master";
  inputs.src-osrm-master.repo  = "nim-osrm";
  inputs.src-osrm-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-osrm-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-osrm-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}