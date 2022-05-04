{
  description = ''Amazon Web Services (AWS) APIs'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-atoz-2619_0_1.flake = false;
  inputs.src-atoz-2619_0_1.ref   = "refs/tags/2619.0.1";
  inputs.src-atoz-2619_0_1.owner = "disruptek";
  inputs.src-atoz-2619_0_1.repo  = "atoz";
  inputs.src-atoz-2619_0_1.type  = "github";
  
  inputs."sigv4".owner = "nim-nix-pkgs";
  inputs."sigv4".ref   = "master";
  inputs."sigv4".repo  = "sigv4";
  inputs."sigv4".dir   = "1_4_0";
  inputs."sigv4".type  = "github";
  inputs."sigv4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sigv4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-rest".owner = "nim-nix-pkgs";
  inputs."github-disruptek-rest".ref   = "master";
  inputs."github-disruptek-rest".repo  = "github-disruptek-rest";
  inputs."github-disruptek-rest".dir   = "1_0_5";
  inputs."github-disruptek-rest".type  = "github";
  inputs."github-disruptek-rest".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-rest".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."openapi".owner = "nim-nix-pkgs";
  inputs."openapi".ref   = "master";
  inputs."openapi".repo  = "openapi";
  inputs."openapi".dir   = "3_3_1";
  inputs."openapi".type  = "github";
  inputs."openapi".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openapi".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."npeg".owner = "nim-nix-pkgs";
  inputs."npeg".ref   = "master";
  inputs."npeg".repo  = "npeg";
  inputs."npeg".dir   = "0_26_0";
  inputs."npeg".type  = "github";
  inputs."npeg".inputs.nixpkgs.follows = "nixpkgs";
  inputs."npeg".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-atoz-2619_0_1"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-atoz-2619_0_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}