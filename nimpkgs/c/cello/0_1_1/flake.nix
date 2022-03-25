{
  description = ''String algorithms with succinct data structures'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-cello-0_1_1.flake = false;
  inputs.src-cello-0_1_1.ref   = "refs/tags/0.1.1";
  inputs.src-cello-0_1_1.owner = "andreaferretti";
  inputs.src-cello-0_1_1.repo  = "cello";
  inputs.src-cello-0_1_1.type  = "github";
  
  inputs."spills".owner = "nim-nix-pkgs";
  inputs."spills".ref   = "master";
  inputs."spills".repo  = "spills";
  inputs."spills".dir   = "0_1_3";
  inputs."spills".type  = "github";
  inputs."spills".inputs.nixpkgs.follows = "nixpkgs";
  inputs."spills".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-cello-0_1_1"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-cello-0_1_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}