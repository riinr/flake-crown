{
  description = ''Financial Library for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimFinLib-master.flake = false;
  inputs.src-nimFinLib-master.ref   = "refs/heads/master";
  inputs.src-nimFinLib-master.owner = "qqtop";
  inputs.src-nimFinLib-master.repo  = "NimFinLib";
  inputs.src-nimFinLib-master.type  = "github";
  
  inputs."nimcx".owner = "nim-nix-pkgs";
  inputs."nimcx".ref   = "master";
  inputs."nimcx".repo  = "nimcx";
  inputs."nimcx".dir   = "master";
  inputs."nimcx".type  = "github";
  inputs."nimcx".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcx".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimFinLib-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-nimFinLib-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}