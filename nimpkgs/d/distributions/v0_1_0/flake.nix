{
  description = ''Probability distributions and functions in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-distributions-v0_1_0.flake = false;
  inputs.src-distributions-v0_1_0.owner = "ayman-albaz";
  inputs.src-distributions-v0_1_0.ref   = "v0_1_0";
  inputs.src-distributions-v0_1_0.repo  = "distributions";
  inputs.src-distributions-v0_1_0.type  = "github";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-distributions-v0_1_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-distributions-v0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}