{
  description = ''A program to staticlly host files or directories over HTTP'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-host-master.flake = false;
  inputs.src-host-master.owner = "RainbowAsteroids";
  inputs.src-host-master.ref   = "master";
  inputs.src-host-master.repo  = "host";
  inputs.src-host-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-host-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-host-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}