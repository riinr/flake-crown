{
  description = ''A simple cross language struct and enum file generator.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-wings-devel.flake = false;
  inputs.src-wings-devel.ref   = "refs/heads/devel";
  inputs.src-wings-devel.owner = "binhonglee";
  inputs.src-wings-devel.repo  = "wings";
  inputs.src-wings-devel.type  = "github";
  
  inputs."stones".owner = "nim-nix-pkgs";
  inputs."stones".ref   = "master";
  inputs."stones".repo  = "stones";
  inputs."stones".dir   = "devel";
  inputs."stones".type  = "github";
  inputs."stones".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stones".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-wings-devel"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-wings-devel";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}