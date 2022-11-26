{
  description = ''webp bindings'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimwebp-master.flake = false;
  inputs.src-nimwebp-master.ref   = "refs/heads/master";
  inputs.src-nimwebp-master.owner = "tormund";
  inputs.src-nimwebp-master.repo  = "nimwebp";
  inputs.src-nimwebp-master.type  = "github";
  
  inputs."nimpng".owner = "nim-nix-pkgs";
  inputs."nimpng".ref   = "master";
  inputs."nimpng".repo  = "nimpng";
  inputs."nimpng".dir   = "v0_3_2";
  inputs."nimpng".type  = "github";
  inputs."nimpng".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpng".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-yglukhov-clurp".owner = "nim-nix-pkgs";
  inputs."github-yglukhov-clurp".ref   = "master";
  inputs."github-yglukhov-clurp".repo  = "github-yglukhov-clurp";
  inputs."github-yglukhov-clurp".dir   = "master";
  inputs."github-yglukhov-clurp".type  = "github";
  inputs."github-yglukhov-clurp".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-yglukhov-clurp".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimwebp-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-nimwebp-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}