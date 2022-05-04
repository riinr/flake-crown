{
  description = ''De/serialization library for Nim '';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-deser-v0_1_3.flake = false;
  inputs.src-deser-v0_1_3.ref   = "refs/tags/v0.1.3";
  inputs.src-deser-v0_1_3.owner = "gabbhack";
  inputs.src-deser-v0_1_3.repo  = "deser";
  inputs.src-deser-v0_1_3.type  = "github";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-deser-v0_1_3"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-deser-v0_1_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}