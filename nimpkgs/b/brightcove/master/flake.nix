{
  description = ''Brightcove player parser'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-brightcove-master.flake = false;
  inputs.src-brightcove-master.ref   = "refs/heads/master";
  inputs.src-brightcove-master.owner = "thisago";
  inputs.src-brightcove-master.repo  = "brightcove";
  inputs.src-brightcove-master.type  = "github";
  
  inputs."util".owner = "nim-nix-pkgs";
  inputs."util".ref   = "master";
  inputs."util".repo  = "util";
  inputs."util".dir   = "master";
  inputs."util".type  = "github";
  inputs."util".inputs.nixpkgs.follows = "nixpkgs";
  inputs."util".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-brightcove-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-brightcove-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}