{
  description = ''A library of components and systems for the Polymorph ECS'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-polymers-master.flake = false;
  inputs.src-polymers-master.ref   = "refs/heads/master";
  inputs.src-polymers-master.owner = "rlipsc";
  inputs.src-polymers-master.repo  = "polymers";
  inputs.src-polymers-master.type  = "github";
  
  inputs."polymorph".owner = "nim-nix-pkgs";
  inputs."polymorph".ref   = "master";
  inputs."polymorph".repo  = "polymorph";
  inputs."polymorph".dir   = "v0_3_0";
  inputs."polymorph".type  = "github";
  inputs."polymorph".inputs.nixpkgs.follows = "nixpkgs";
  inputs."polymorph".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-polymers-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-polymers-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}