{
  description = ''Micro benchmarking tool to measure speed of code, with the goal of optimizing it.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimbench-v0_1_1.flake = false;
  inputs.src-nimbench-v0_1_1.owner = "ivankoster";
  inputs.src-nimbench-v0_1_1.ref   = "refs/tags/v0.1.1";
  inputs.src-nimbench-v0_1_1.repo  = "nimbench";
  inputs.src-nimbench-v0_1_1.type  = "github";
  
  inputs."strfmt".dir   = "nimpkgs/s/strfmt";
  inputs."strfmt".owner = "riinr";
  inputs."strfmt".ref   = "flake-pinning";
  inputs."strfmt".repo  = "flake-nimble";
  inputs."strfmt".type  = "github";
  inputs."strfmt".inputs.nixpkgs.follows = "nixpkgs";
  inputs."strfmt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimbench-v0_1_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimbench-v0_1_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}