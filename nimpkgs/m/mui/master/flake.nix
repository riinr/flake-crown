{
  description = ''A tiny immediate-mode UI library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-mui-master.flake = false;
  inputs.src-mui-master.owner = "angluca";
  inputs.src-mui-master.ref   = "master";
  inputs.src-mui-master.repo  = "mui";
  inputs.src-mui-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-mui-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-mui-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}