{
  description = ''Nim functional programming library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimfp-v0_4_1.flake = false;
  inputs.src-nimfp-v0_4_1.owner = "vegansk";
  inputs.src-nimfp-v0_4_1.ref   = "refs/tags/v0.4.1";
  inputs.src-nimfp-v0_4_1.repo  = "nimfp";
  inputs.src-nimfp-v0_4_1.type  = "github";
  
  inputs."nimboost".dir   = "nimpkgs/n/nimboost";
  inputs."nimboost".owner = "riinr";
  inputs."nimboost".ref   = "flake-pinning";
  inputs."nimboost".repo  = "flake-nimble";
  inputs."nimboost".type  = "github";
  inputs."nimboost".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimboost".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."classy".dir   = "nimpkgs/c/classy";
  inputs."classy".owner = "riinr";
  inputs."classy".ref   = "flake-pinning";
  inputs."classy".repo  = "flake-nimble";
  inputs."classy".type  = "github";
  inputs."classy".inputs.nixpkgs.follows = "nixpkgs";
  inputs."classy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimfp-v0_4_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimfp-v0_4_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}