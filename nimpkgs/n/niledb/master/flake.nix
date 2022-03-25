{
  description = ''Key/Value storage into a fast file-hash'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-niledb-master.flake = false;
  inputs.src-niledb-master.ref   = "refs/heads/master";
  inputs.src-niledb-master.owner = "JeffersonLab";
  inputs.src-niledb-master.repo  = "niledb";
  inputs.src-niledb-master.type  = "github";
  
  inputs."serializetools".owner = "nim-nix-pkgs";
  inputs."serializetools".ref   = "master";
  inputs."serializetools".repo  = "serializetools";
  inputs."serializetools".dir   = "v1_16_2";
  inputs."serializetools".type  = "github";
  inputs."serializetools".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serializetools".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-niledb-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-niledb-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}