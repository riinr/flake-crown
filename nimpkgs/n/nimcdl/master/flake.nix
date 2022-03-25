{
  description = ''Create circuits and printed circuit boards with nim!'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimcdl-master.flake = false;
  inputs.src-nimcdl-master.ref   = "refs/heads/master";
  inputs.src-nimcdl-master.owner = "endes123321";
  inputs.src-nimcdl-master.repo  = "nimcdl";
  inputs.src-nimcdl-master.type  = "gitlab";
  
  inputs."cascade".owner = "nim-nix-pkgs";
  inputs."cascade".ref   = "master";
  inputs."cascade".repo  = "cascade";
  inputs."cascade".dir   = "v1_0_0";
  inputs."cascade".type  = "github";
  inputs."cascade".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cascade".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimcdl-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-nimcdl-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}