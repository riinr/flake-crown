{
  description = ''API for Web Audio (JS)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-webaudio-master.flake = false;
  inputs.src-webaudio-master.ref   = "refs/heads/master";
  inputs.src-webaudio-master.owner = "ftsf";
  inputs.src-webaudio-master.repo  = "nim-webaudio";
  inputs.src-webaudio-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-webaudio-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-webaudio-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}