{
  description = ''Euclidean Division & Euclidean Modulo'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-euclidean-master.flake = false;
  inputs.src-euclidean-master.owner = "juancarlospaco";
  inputs.src-euclidean-master.ref   = "master";
  inputs.src-euclidean-master.repo  = "nim-euclidean";
  inputs.src-euclidean-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-euclidean-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-euclidean-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}