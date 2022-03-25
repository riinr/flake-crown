{
  description = ''Generalized Linear Models in Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-linear_models-master.flake = false;
  inputs.src-linear_models-master.ref   = "refs/heads/master";
  inputs.src-linear_models-master.owner = "ayman-albaz";
  inputs.src-linear_models-master.repo  = "linear-models";
  inputs.src-linear_models-master.type  = "github";
  
  inputs."arraymancer".owner = "nim-nix-pkgs";
  inputs."arraymancer".ref   = "master";
  inputs."arraymancer".repo  = "arraymancer";
  inputs."arraymancer".dir   = "v0_7_11";
  inputs."arraymancer".type  = "github";
  inputs."arraymancer".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arraymancer".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."distributions".owner = "nim-nix-pkgs";
  inputs."distributions".ref   = "master";
  inputs."distributions".repo  = "distributions";
  inputs."distributions".dir   = "v0_1_1";
  inputs."distributions".type  = "github";
  inputs."distributions".inputs.nixpkgs.follows = "nixpkgs";
  inputs."distributions".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-linear_models-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-linear_models-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}