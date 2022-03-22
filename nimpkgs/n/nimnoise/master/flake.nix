{
  description = ''A port of libnoise into pure nim, heavily inspired by Libnoise.Unity, but true to the original Libnoise'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimnoise-master.flake = false;
  inputs.src-nimnoise-master.owner = "blakeanedved";
  inputs.src-nimnoise-master.ref   = "master";
  inputs.src-nimnoise-master.repo  = "nimnoise";
  inputs.src-nimnoise-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimnoise-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimnoise-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}