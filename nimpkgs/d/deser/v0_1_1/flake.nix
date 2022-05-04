{
  description = ''De/serialization library for Nim '';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-deser-v0_1_1.flake = false;
  inputs.src-deser-v0_1_1.ref   = "refs/tags/v0.1.1";
  inputs.src-deser-v0_1_1.owner = "gabbhack";
  inputs.src-deser-v0_1_1.repo  = "deser";
  inputs.src-deser-v0_1_1.type  = "github";
  
  inputs."github-gabbhack-anycase_fork".owner = "nim-nix-pkgs";
  inputs."github-gabbhack-anycase_fork".ref   = "master";
  inputs."github-gabbhack-anycase_fork".repo  = "github-gabbhack-anycase_fork";
  inputs."github-gabbhack-anycase_fork".dir   = "v0_2_0";
  inputs."github-gabbhack-anycase_fork".type  = "github";
  inputs."github-gabbhack-anycase_fork".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-gabbhack-anycase_fork".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-deser-v0_1_1"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-deser-v0_1_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}