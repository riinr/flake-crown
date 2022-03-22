{
  description = ''String algorithms with succinct data structures'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-cello-master.flake = false;
  inputs.src-cello-master.ref   = "refs/heads/master";
  inputs.src-cello-master.owner = "andreaferretti";
  inputs.src-cello-master.repo  = "cello";
  inputs.src-cello-master.type  = "github";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-cello-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-cello-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}