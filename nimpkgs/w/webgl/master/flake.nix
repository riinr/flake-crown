{
  description = ''Experimental wrapper to webgl for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-webgl-master.flake = false;
  inputs.src-webgl-master.owner = "stisa";
  inputs.src-webgl-master.ref   = "refs/heads/master";
  inputs.src-webgl-master.repo  = "webgl";
  inputs.src-webgl-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-WebGL-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-WebGL-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}