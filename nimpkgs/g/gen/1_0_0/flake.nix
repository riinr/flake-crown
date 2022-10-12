{
  description = ''Ultimate Scaffolding Tool for building GUI/Web/CLI apps in Nim Lang.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-gen-1_0_0.flake = false;
  inputs.src-gen-1_0_0.ref   = "refs/tags/1.0.0";
  inputs.src-gen-1_0_0.owner = "Adeohluwa";
  inputs.src-gen-1_0_0.repo  = "gen";
  inputs.src-gen-1_0_0.type  = "github";
  
  inputs."progress".owner = "nim-nix-pkgs";
  inputs."progress".ref   = "master";
  inputs."progress".repo  = "progress";
  inputs."progress".dir   = "v1_1_3";
  inputs."progress".type  = "github";
  inputs."progress".inputs.nixpkgs.follows = "nixpkgs";
  inputs."progress".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."docopt".owner = "nim-nix-pkgs";
  inputs."docopt".ref   = "master";
  inputs."docopt".repo  = "docopt";
  inputs."docopt".dir   = "v0_7_0";
  inputs."docopt".type  = "github";
  inputs."docopt".inputs.nixpkgs.follows = "nixpkgs";
  inputs."docopt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fab".owner = "nim-nix-pkgs";
  inputs."fab".ref   = "master";
  inputs."fab".repo  = "fab";
  inputs."fab".dir   = "v0_4_4";
  inputs."fab".type  = "github";
  inputs."fab".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fab".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gara".owner = "nim-nix-pkgs";
  inputs."gara".ref   = "master";
  inputs."gara".repo  = "gara";
  inputs."gara".dir   = "master";
  inputs."gara".type  = "github";
  inputs."gara".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gara".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-gen-1_0_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-gen-1_0_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}