{
  description = ''A Nim query builder library inspired by Laravel/PHP and Orator/Python'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-allographer-v0_13_1.flake = false;
  inputs.src-allographer-v0_13_1.owner = "itsumura-h";
  inputs.src-allographer-v0_13_1.ref   = "v0_13_1";
  inputs.src-allographer-v0_13_1.repo  = "nim-allographer";
  inputs.src-allographer-v0_13_1.type  = "github";
  
  inputs."cligen".owner = "nim-nix-pkgs";
  inputs."cligen".ref   = "master";
  inputs."cligen".repo  = "cligen";
  inputs."cligen".dir   = "v1_5_22";
  inputs."cligen".type  = "github";
  inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."progress".owner = "nim-nix-pkgs";
  inputs."progress".ref   = "master";
  inputs."progress".repo  = "progress";
  inputs."progress".dir   = "v1_1_3";
  inputs."progress".type  = "github";
  inputs."progress".inputs.nixpkgs.follows = "nixpkgs";
  inputs."progress".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-allographer-v0_13_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-allographer-v0_13_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}