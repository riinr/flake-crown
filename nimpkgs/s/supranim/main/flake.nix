{
  description = ''A fast Hyper Server & Web Framework'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-supranim-main.flake = false;
  inputs.src-supranim-main.ref   = "refs/heads/main";
  inputs.src-supranim-main.owner = "supranim";
  inputs.src-supranim-main.repo  = "supranim";
  inputs.src-supranim-main.type  = "github";
  
  inputs."nyml".owner = "nim-nix-pkgs";
  inputs."nyml".ref   = "master";
  inputs."nyml".repo  = "nyml";
  inputs."nyml".dir   = "main";
  inputs."nyml".type  = "github";
  inputs."nyml".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nyml".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-supranim-main"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-supranim-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}