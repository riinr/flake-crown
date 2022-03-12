{
  description = ''String algorithms with succinct data structures'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-cello-0_1_0.flake = false;
  inputs.src-cello-0_1_0.owner = "andreaferretti";
  inputs.src-cello-0_1_0.ref   = "refs/tags/0.1.0";
  inputs.src-cello-0_1_0.repo  = "cello";
  inputs.src-cello-0_1_0.type  = "github";
  
  inputs."spills".dir   = "nimpkgs/s/spills";
  inputs."spills".owner = "riinr";
  inputs."spills".ref   = "flake-pinning";
  inputs."spills".repo  = "flake-nimble";
  inputs."spills".type  = "github";
  inputs."spills".inputs.nixpkgs.follows = "nixpkgs";
  inputs."spills".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-cello-0_1_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-cello-0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}