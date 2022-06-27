{
  description = ''Simple WebSocket library for nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."github-status-im-news-master".dir   = "master";
  inputs."github-status-im-news-master".owner = "nim-nix-pkgs";
  inputs."github-status-im-news-master".ref   = "master";
  inputs."github-status-im-news-master".repo  = "github-status-im-news";
  inputs."github-status-im-news-master".type  = "github";
  inputs."github-status-im-news-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-status-im-news-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-status-im-news-0_2".dir   = "0_2";
  inputs."github-status-im-news-0_2".owner = "nim-nix-pkgs";
  inputs."github-status-im-news-0_2".ref   = "master";
  inputs."github-status-im-news-0_2".repo  = "github-status-im-news";
  inputs."github-status-im-news-0_2".type  = "github";
  inputs."github-status-im-news-0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-status-im-news-0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-status-im-news-0_3".dir   = "0_3";
  inputs."github-status-im-news-0_3".owner = "nim-nix-pkgs";
  inputs."github-status-im-news-0_3".ref   = "master";
  inputs."github-status-im-news-0_3".repo  = "github-status-im-news";
  inputs."github-status-im-news-0_3".type  = "github";
  inputs."github-status-im-news-0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-status-im-news-0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-status-im-news-0_4".dir   = "0_4";
  inputs."github-status-im-news-0_4".owner = "nim-nix-pkgs";
  inputs."github-status-im-news-0_4".ref   = "master";
  inputs."github-status-im-news-0_4".repo  = "github-status-im-news";
  inputs."github-status-im-news-0_4".type  = "github";
  inputs."github-status-im-news-0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-status-im-news-0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-status-im-news-0_5".dir   = "0_5";
  inputs."github-status-im-news-0_5".owner = "nim-nix-pkgs";
  inputs."github-status-im-news-0_5".ref   = "master";
  inputs."github-status-im-news-0_5".repo  = "github-status-im-news";
  inputs."github-status-im-news-0_5".type  = "github";
  inputs."github-status-im-news-0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-status-im-news-0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"];
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}