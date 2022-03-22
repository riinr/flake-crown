{
  description = ''Nim module for parsing GPX (GPS Exchange format) files'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-gpx-master.flake = false;
  inputs.src-gpx-master.ref   = "refs/heads/master";
  inputs.src-gpx-master.owner = "achesak";
  inputs.src-gpx-master.repo  = "nim-gpx";
  inputs.src-gpx-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-gpx-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-gpx-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}