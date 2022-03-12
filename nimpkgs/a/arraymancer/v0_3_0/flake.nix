{
  description = ''A tensor (multidimensional array) library for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-arraymancer-v0_3_0.flake = false;
  inputs.src-arraymancer-v0_3_0.owner = "mratsim";
  inputs.src-arraymancer-v0_3_0.ref   = "refs/tags/v0.3.0";
  inputs.src-arraymancer-v0_3_0.repo  = "Arraymancer";
  inputs.src-arraymancer-v0_3_0.type  = "github";
  
  inputs."nimblas".dir   = "nimpkgs/n/nimblas";
  inputs."nimblas".owner = "riinr";
  inputs."nimblas".ref   = "flake-pinning";
  inputs."nimblas".repo  = "flake-nimble";
  inputs."nimblas".type  = "github";
  inputs."nimblas".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimblas".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcuda".dir   = "nimpkgs/n/nimcuda";
  inputs."nimcuda".owner = "riinr";
  inputs."nimcuda".ref   = "flake-pinning";
  inputs."nimcuda".repo  = "flake-nimble";
  inputs."nimcuda".type  = "github";
  inputs."nimcuda".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcuda".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-arraymancer-v0_3_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-arraymancer-v0_3_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}