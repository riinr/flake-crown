{
  description = ''A simple extensible i18n engine.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-barbarus-master.flake = false;
  inputs.src-barbarus-master.owner = "cjxgm";
  inputs.src-barbarus-master.ref   = "master";
  inputs.src-barbarus-master.repo  = "barbarus";
  inputs.src-barbarus-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-barbarus-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-barbarus-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}