{
  description = ''Linear algebra for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-linalg-master.flake = false;
  inputs.src-linalg-master.owner = "andreaferretti";
  inputs.src-linalg-master.ref   = "refs/heads/master";
  inputs.src-linalg-master.repo  = "linear-algebra";
  inputs.src-linalg-master.type  = "github";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-linalg-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-linalg-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}