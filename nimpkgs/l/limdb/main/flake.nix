{
  description = ''A persistent table-like object backed by lmdb'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-limdb-main.flake = false;
  inputs.src-limdb-main.ref   = "refs/heads/main";
  inputs.src-limdb-main.owner = "capocasa";
  inputs.src-limdb-main.repo  = "limdb";
  inputs.src-limdb-main.type  = "github";
  
  inputs."lmdb".owner = "nim-nix-pkgs";
  inputs."lmdb".ref   = "master";
  inputs."lmdb".repo  = "lmdb";
  inputs."lmdb".dir   = "0_1_2";
  inputs."lmdb".type  = "github";
  inputs."lmdb".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lmdb".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-limdb-main"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-limdb-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}