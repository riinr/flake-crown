{
  description = ''A n-dimensional tensor (ndarray) library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-arraymancer-v0_1_0.flake = false;
  inputs.src-arraymancer-v0_1_0.owner = "mratsim";
  inputs.src-arraymancer-v0_1_0.ref   = "v0_1_0";
  inputs.src-arraymancer-v0_1_0.repo  = "Arraymancer";
  inputs.src-arraymancer-v0_1_0.type  = "github";
  
  inputs."nimblas".owner = "nim-nix-pkgs";
  inputs."nimblas".ref   = "master";
  inputs."nimblas".repo  = "nimblas";
  inputs."nimblas".dir   = "0_2_2";
  inputs."nimblas".type  = "github";
  inputs."nimblas".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimblas".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-arraymancer-v0_1_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-arraymancer-v0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}