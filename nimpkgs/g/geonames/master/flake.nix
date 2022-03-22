{
  description = ''GeoNames API wrapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-geonames-master.flake = false;
  inputs.src-geonames-master.owner = "achesak";
  inputs.src-geonames-master.ref   = "master";
  inputs.src-geonames-master.repo  = "nim-geonames";
  inputs.src-geonames-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-geonames-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-geonames-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}