{
  description = ''Studio Backlot TV video downloader'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-studiobacklottv-master.flake = false;
  inputs.src-studiobacklottv-master.ref   = "refs/heads/master";
  inputs.src-studiobacklottv-master.owner = "thisago";
  inputs.src-studiobacklottv-master.repo  = "studiobacklottv";
  inputs.src-studiobacklottv-master.type  = "github";
  
  inputs."cligen".owner = "nim-nix-pkgs";
  inputs."cligen".ref   = "master";
  inputs."cligen".repo  = "cligen";
  inputs."cligen".dir   = "v1_5_28";
  inputs."cligen".type  = "github";
  inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."util".owner = "nim-nix-pkgs";
  inputs."util".ref   = "master";
  inputs."util".repo  = "util";
  inputs."util".dir   = "master";
  inputs."util".type  = "github";
  inputs."util".inputs.nixpkgs.follows = "nixpkgs";
  inputs."util".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."brightcove".owner = "nim-nix-pkgs";
  inputs."brightcove".ref   = "master";
  inputs."brightcove".repo  = "brightcove";
  inputs."brightcove".dir   = "source";
  inputs."brightcove".type  = "github";
  inputs."brightcove".inputs.nixpkgs.follows = "nixpkgs";
  inputs."brightcove".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-studiobacklottv-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-studiobacklottv-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}