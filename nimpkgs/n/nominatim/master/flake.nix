{
  description = ''OpenStreetMap Nominatim API Lib and CLI Client for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nominatim-master.flake = false;
  inputs.src-nominatim-master.owner = "juancarlospaco";
  inputs.src-nominatim-master.ref   = "master";
  inputs.src-nominatim-master.repo  = "nim-nominatim";
  inputs.src-nominatim-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nominatim-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nominatim-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}