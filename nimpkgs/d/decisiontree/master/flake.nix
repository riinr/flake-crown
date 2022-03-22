{
  description = ''Decision tree and Random forest CART implementation in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-decisiontree-master.flake = false;
  inputs.src-decisiontree-master.ref   = "refs/heads/master";
  inputs.src-decisiontree-master.owner = "Michedev";
  inputs.src-decisiontree-master.repo  = "DecisionTreeNim";
  inputs.src-decisiontree-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-decisiontree-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-decisiontree-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}