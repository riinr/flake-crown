{
  description = ''Shaders in Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimsl-v0_3.flake = false;
  inputs.src-nimsl-v0_3.owner = "yglukhov";
  inputs.src-nimsl-v0_3.ref   = "refs/tags/v0.3";
  inputs.src-nimsl-v0_3.repo  = "nimsl";
  inputs.src-nimsl-v0_3.type  = "github";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimsl-v0_3"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimsl-v0_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}