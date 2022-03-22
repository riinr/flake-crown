{
  description = ''Probability distributions and functions in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-distributions-master.flake = false;
  inputs.src-distributions-master.owner = "ayman-albaz";
  inputs.src-distributions-master.ref   = "master";
  inputs.src-distributions-master.repo  = "distributions";
  inputs.src-distributions-master.type  = "github";
  
  inputs."special_functions".owner = "nim-nix-pkgs";
  inputs."special_functions".ref   = "master";
  inputs."special_functions".repo  = "special_functions";
  inputs."special_functions".dir   = "v0_1_1";
  inputs."special_functions".type  = "github";
  inputs."special_functions".inputs.nixpkgs.follows = "nixpkgs";
  inputs."special_functions".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-distributions-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-distributions-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}