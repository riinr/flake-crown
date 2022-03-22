{
  description = ''A simple library for Google Maps Geocoding API'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-geocoding-master.flake = false;
  inputs.src-geocoding-master.ref   = "refs/heads/master";
  inputs.src-geocoding-master.owner = "saratchandra92";
  inputs.src-geocoding-master.repo  = "nim-geocoding";
  inputs.src-geocoding-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-geocoding-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-geocoding-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}