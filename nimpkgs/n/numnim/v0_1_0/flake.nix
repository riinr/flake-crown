{
  description = ''A numpy like ndarray and dataframe library for nim-lang.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-numnim-v0_1_0.flake = false;
  inputs.src-numnim-v0_1_0.owner = "YesDrX";
  inputs.src-numnim-v0_1_0.ref   = "refs/tags/v0.1.0";
  inputs.src-numnim-v0_1_0.repo  = "numnim";
  inputs.src-numnim-v0_1_0.type  = "github";
  
  inputs."nimblas".dir   = "nimpkgs/n/nimblas";
  inputs."nimblas".owner = "riinr";
  inputs."nimblas".ref   = "flake-pinning";
  inputs."nimblas".repo  = "flake-nimble";
  inputs."nimblas".type  = "github";
  inputs."nimblas".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimblas".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimlapack".dir   = "nimpkgs/n/nimlapack";
  inputs."nimlapack".owner = "riinr";
  inputs."nimlapack".ref   = "flake-pinning";
  inputs."nimlapack".repo  = "flake-nimble";
  inputs."nimlapack".type  = "github";
  inputs."nimlapack".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimlapack".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-numnim-v0_1_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-numnim-v0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}