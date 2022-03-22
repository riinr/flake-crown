{
  description = ''InfluxDB client library.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimflux-master.flake = false;
  inputs.src-nimflux-master.owner = "tdely";
  inputs.src-nimflux-master.ref   = "master";
  inputs.src-nimflux-master.repo  = "nimflux";
  inputs.src-nimflux-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimflux-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimflux-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}