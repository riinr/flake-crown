{
  description = ''A simple library for Google Maps Geocoding API'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-geocoding-v0_1_1.flake = false;
  inputs.src-geocoding-v0_1_1.ref   = "refs/tags/v0.1.1";
  inputs.src-geocoding-v0_1_1.owner = "saratchandra92";
  inputs.src-geocoding-v0_1_1.repo  = "nim-geocoding";
  inputs.src-geocoding-v0_1_1.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-geocoding-v0_1_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-geocoding-v0_1_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}