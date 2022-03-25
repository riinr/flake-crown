{
  description = ''wZeeGird Plugin for wNim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-wZeeGrid-master.flake = false;
  inputs.src-wZeeGrid-master.ref   = "refs/heads/master";
  inputs.src-wZeeGrid-master.owner = "bunkford";
  inputs.src-wZeeGrid-master.repo  = "wZeeGrid";
  inputs.src-wZeeGrid-master.type  = "github";
  
  inputs."wnim".owner = "nim-nix-pkgs";
  inputs."wnim".ref   = "master";
  inputs."wnim".repo  = "wnim";
  inputs."wnim".dir   = "master";
  inputs."wnim".type  = "github";
  inputs."wnim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wnim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-wZeeGrid-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-wZeeGrid-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}