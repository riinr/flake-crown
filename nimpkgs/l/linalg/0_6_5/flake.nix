{
  description = ''Linear algebra for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-linalg-0_6_5.flake = false;
  inputs.src-linalg-0_6_5.owner = "andreaferretti";
  inputs.src-linalg-0_6_5.ref   = "refs/tags/0.6.5";
  inputs.src-linalg-0_6_5.repo  = "linear-algebra";
  inputs.src-linalg-0_6_5.type  = "github";
  
  inputs."nimblas".dir   = "nimpkgs/n/nimblas";
  inputs."nimblas".owner = "riinr";
  inputs."nimblas".ref   = "flake-pinning";
  inputs."nimblas".repo  = "flake-nimble";
  inputs."nimblas".type  = "github";
  inputs."nimblas".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimblas".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-linalg-0_6_5"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-linalg-0_6_5";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}