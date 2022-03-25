{
  description = ''ISO codes for Nim that allows to embed the data within the executable (or load it automatically at runtime).'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-isocodes-1_4_0.flake = false;
  inputs.src-isocodes-1_4_0.ref   = "refs/tags/1.4.0";
  inputs.src-isocodes-1_4_0.owner = "kraptor";
  inputs.src-isocodes-1_4_0.repo  = "isocodes";
  inputs.src-isocodes-1_4_0.type  = "github";
  
  inputs."jsony".owner = "nim-nix-pkgs";
  inputs."jsony".ref   = "master";
  inputs."jsony".repo  = "jsony";
  inputs."jsony".dir   = "1_1_3";
  inputs."jsony".type  = "github";
  inputs."jsony".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsony".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-isocodes-1_4_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-isocodes-1_4_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}