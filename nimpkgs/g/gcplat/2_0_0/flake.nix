{
  description = ''Google Cloud Platform (GCP) APIs'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-gcplat-2_0_0.flake = false;
  inputs.src-gcplat-2_0_0.ref   = "refs/tags/2.0.0";
  inputs.src-gcplat-2_0_0.owner = "disruptek";
  inputs.src-gcplat-2_0_0.repo  = "gcplat";
  inputs.src-gcplat-2_0_0.type  = "github";
  
  inputs."openapi".owner = "nim-nix-pkgs";
  inputs."openapi".ref   = "master";
  inputs."openapi".repo  = "openapi";
  inputs."openapi".dir   = "3_1_0";
  inputs."openapi".type  = "github";
  inputs."openapi".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openapi".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jwt".owner = "nim-nix-pkgs";
  inputs."jwt".ref   = "master";
  inputs."jwt".repo  = "jwt";
  inputs."jwt".dir   = "master";
  inputs."jwt".type  = "github";
  inputs."jwt".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jwt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-rest".owner = "nim-nix-pkgs";
  inputs."github-disruptek-rest".ref   = "master";
  inputs."github-disruptek-rest".repo  = "github-disruptek-rest";
  inputs."github-disruptek-rest".dir   = "1_0_5";
  inputs."github-disruptek-rest".type  = "github";
  inputs."github-disruptek-rest".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-rest".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-gcplat-2_0_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-gcplat-2_0_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}