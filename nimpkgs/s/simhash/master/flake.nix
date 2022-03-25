{
  description = ''Nim implementation of simhash algoritim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-simhash-master.flake = false;
  inputs.src-simhash-master.ref   = "refs/heads/master";
  inputs.src-simhash-master.owner = "bung87";
  inputs.src-simhash-master.repo  = "simhash-nim";
  inputs.src-simhash-master.type  = "github";
  
  inputs."lc".owner = "nim-nix-pkgs";
  inputs."lc".ref   = "master";
  inputs."lc".repo  = "lc";
  inputs."lc".dir   = "v0_9_0";
  inputs."lc".type  = "github";
  inputs."lc".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lc".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-simhash-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-simhash-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}