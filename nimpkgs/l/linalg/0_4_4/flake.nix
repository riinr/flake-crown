{
  description = ''Linear algebra for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-linalg-0_4_4.flake = false;
  inputs.src-linalg-0_4_4.owner = "andreaferretti";
  inputs.src-linalg-0_4_4.ref   = "refs/tags/0.4.4";
  inputs.src-linalg-0_4_4.repo  = "linear-algebra";
  inputs.src-linalg-0_4_4.type  = "github";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-linalg-0_4_4"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-linalg-0_4_4";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}