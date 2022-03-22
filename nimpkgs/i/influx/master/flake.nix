{
  description = ''wrapper for communicating with InfluxDB over the REST interface'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-influx-master.flake = false;
  inputs.src-influx-master.ref   = "refs/heads/master";
  inputs.src-influx-master.owner = "samdmarshall";
  inputs.src-influx-master.repo  = "influx.nim";
  inputs.src-influx-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-influx-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-influx-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}