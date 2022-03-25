{
  description = ''Linear Algebra for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-linalg-0_6_5.flake = false;
  inputs.src-linalg-0_6_5.ref   = "refs/tags/0.6.5";
  inputs.src-linalg-0_6_5.owner = "andreaferretti";
  inputs.src-linalg-0_6_5.repo  = "linear-algebra";
  inputs.src-linalg-0_6_5.type  = "github";
  
  inputs."nimblas".owner = "nim-nix-pkgs";
  inputs."nimblas".ref   = "master";
  inputs."nimblas".repo  = "nimblas";
  inputs."nimblas".dir   = "0_2_2";
  inputs."nimblas".type  = "github";
  inputs."nimblas".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimblas".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-linalg-0_6_5"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-linalg-0_6_5";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}