{
  description = ''Shaders in Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimsl-master.flake = false;
  inputs.src-nimsl-master.owner = "yglukhov";
  inputs.src-nimsl-master.ref   = "refs/heads/master";
  inputs.src-nimsl-master.repo  = "nimsl";
  inputs.src-nimsl-master.type  = "github";
  
  inputs."variant".dir   = "nimpkgs/v/variant";
  inputs."variant".owner = "riinr";
  inputs."variant".ref   = "flake-pinning";
  inputs."variant".repo  = "flake-nimble";
  inputs."variant".type  = "github";
  inputs."variant".inputs.nixpkgs.follows = "nixpkgs";
  inputs."variant".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimsl-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimsl-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}