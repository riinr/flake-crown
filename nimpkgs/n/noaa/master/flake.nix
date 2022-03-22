{
  description = ''NOAA weather API wrapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-noaa-master.flake = false;
  inputs.src-noaa-master.ref   = "refs/heads/master";
  inputs.src-noaa-master.owner = "achesak";
  inputs.src-noaa-master.repo  = "nim-noaa";
  inputs.src-noaa-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-noaa-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-noaa-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}