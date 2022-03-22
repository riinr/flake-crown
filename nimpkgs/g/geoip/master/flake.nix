{
  description = ''Retrieve info about a location from an IP address'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-geoip-master.flake = false;
  inputs.src-geoip-master.owner = "achesak";
  inputs.src-geoip-master.ref   = "master";
  inputs.src-geoip-master.repo  = "nim-geoip";
  inputs.src-geoip-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-geoip-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-geoip-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}