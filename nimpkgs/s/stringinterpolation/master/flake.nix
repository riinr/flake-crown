{
  description = ''String interpolation with printf syntax'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-stringinterpolation-master.flake = false;
  inputs.src-stringinterpolation-master.owner = "bluenote10";
  inputs.src-stringinterpolation-master.ref   = "refs/heads/master";
  inputs.src-stringinterpolation-master.repo  = "nim-stringinterpolation";
  inputs.src-stringinterpolation-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-stringinterpolation-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-stringinterpolation-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}