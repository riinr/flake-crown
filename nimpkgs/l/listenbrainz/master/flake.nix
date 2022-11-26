{
  description = ''Low-level multisync (C backend) and async (JS backend) bindings to the ListenBrainz web API.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-listenbrainz-master.flake = false;
  inputs.src-listenbrainz-master.ref   = "refs/heads/master";
  inputs.src-listenbrainz-master.owner = "tandy1000";
  inputs.src-listenbrainz-master.repo  = "listenbrainz-nim";
  inputs.src-listenbrainz-master.type  = "gitlab";
  
  inputs."jsony".owner = "nim-nix-pkgs";
  inputs."jsony".ref   = "master";
  inputs."jsony".repo  = "jsony";
  inputs."jsony".dir   = "1_1_3";
  inputs."jsony".type  = "github";
  inputs."jsony".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsony".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodejs".owner = "nim-nix-pkgs";
  inputs."nodejs".ref   = "master";
  inputs."nodejs".repo  = "nodejs";
  inputs."nodejs".dir   = "main";
  inputs."nodejs".type  = "github";
  inputs."nodejs".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodejs".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dotenv".owner = "nim-nix-pkgs";
  inputs."dotenv".ref   = "master";
  inputs."dotenv".repo  = "dotenv";
  inputs."dotenv".dir   = "2_0_1";
  inputs."dotenv".type  = "github";
  inputs."dotenv".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dotenv".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-alaviss-union".owner = "nim-nix-pkgs";
  inputs."github-alaviss-union".ref   = "master";
  inputs."github-alaviss-union".repo  = "github-alaviss-union";
  inputs."github-alaviss-union".dir   = "0_1_2";
  inputs."github-alaviss-union".type  = "github";
  inputs."github-alaviss-union".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-alaviss-union".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-tandy-1000-uniony".owner = "nim-nix-pkgs";
  inputs."github-tandy-1000-uniony".ref   = "master";
  inputs."github-tandy-1000-uniony".repo  = "github-tandy-1000-uniony";
  inputs."github-tandy-1000-uniony".dir   = "devel";
  inputs."github-tandy-1000-uniony".type  = "github";
  inputs."github-tandy-1000-uniony".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-tandy-1000-uniony".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github.com/tandy-1000/jspf-nim".owner = "nim-nix-pkgs";
  inputs."github.com/tandy-1000/jspf-nim".ref   = "master";
  inputs."github.com/tandy-1000/jspf-nim".repo  = "github.com/tandy-1000/jspf-nim";
  inputs."github.com/tandy-1000/jspf-nim".dir   = "";
  inputs."github.com/tandy-1000/jspf-nim".type  = "github";
  inputs."github.com/tandy-1000/jspf-nim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github.com/tandy-1000/jspf-nim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github.com/tandy-1000/asyncutils".owner = "nim-nix-pkgs";
  inputs."github.com/tandy-1000/asyncutils".ref   = "master";
  inputs."github.com/tandy-1000/asyncutils".repo  = "github.com/tandy-1000/asyncutils";
  inputs."github.com/tandy-1000/asyncutils".dir   = "";
  inputs."github.com/tandy-1000/asyncutils".type  = "github";
  inputs."github.com/tandy-1000/asyncutils".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github.com/tandy-1000/asyncutils".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-listenbrainz-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-listenbrainz-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}