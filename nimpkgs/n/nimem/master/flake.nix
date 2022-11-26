{
  description = ''Cross platform (windows, linux) library for external process memory manipulation'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimem-master.flake = false;
  inputs.src-nimem-master.ref   = "refs/heads/master";
  inputs.src-nimem-master.owner = "qb-0";
  inputs.src-nimem-master.repo  = "Nimem";
  inputs.src-nimem-master.type  = "github";
  
  inputs."winim".owner = "nim-nix-pkgs";
  inputs."winim".ref   = "master";
  inputs."winim".repo  = "winim";
  inputs."winim".dir   = "3_9_0";
  inputs."winim".type  = "github";
  inputs."winim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."winim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimem-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-nimem-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}