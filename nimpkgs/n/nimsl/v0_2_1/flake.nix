{
  description = ''Shaders in Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimsl-v0_2_1.flake = false;
  inputs.src-nimsl-v0_2_1.owner = "yglukhov";
  inputs.src-nimsl-v0_2_1.ref   = "refs/tags/v0.2.1";
  inputs.src-nimsl-v0_2_1.repo  = "nimsl";
  inputs.src-nimsl-v0_2_1.type  = "github";
  
  inputs."variant".owner = "nim-nix-pkgs";
  inputs."variant".ref   = "master";
  inputs."variant".repo  = "variant";
  inputs."variant".type  = "github";
  inputs."variant".inputs.nixpkgs.follows = "nixpkgs";
  inputs."variant".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimsl-v0_2_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimsl-v0_2_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}