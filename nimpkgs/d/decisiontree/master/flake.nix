{
  description = ''Decision tree and Random forest CART implementation for nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-DecisionTree-master.flake = false;
  inputs.src-DecisionTree-master.ref   = "refs/heads/master";
  inputs.src-DecisionTree-master.owner = "Michedev";
  inputs.src-DecisionTree-master.repo  = "DecisionTreeNim";
  inputs.src-DecisionTree-master.type  = "github";
  
  inputs."sequtils2".owner = "nim-nix-pkgs";
  inputs."sequtils2".ref   = "master";
  inputs."sequtils2".repo  = "sequtils2";
  inputs."sequtils2".dir   = "1_1_0";
  inputs."sequtils2".type  = "github";
  inputs."sequtils2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sequtils2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-DecisionTree-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-DecisionTree-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}