{
  description = ''Easy websocket with chronos support'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."news-master".dir   = "master";
  inputs."news-master".owner = "nim-nix-pkgs";
  inputs."news-master".ref   = "master";
  inputs."news-master".repo  = "news";
  inputs."news-master".type  = "github";
  inputs."news-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."news-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."news-0_2".dir   = "0_2";
  inputs."news-0_2".owner = "nim-nix-pkgs";
  inputs."news-0_2".ref   = "master";
  inputs."news-0_2".repo  = "news";
  inputs."news-0_2".type  = "github";
  inputs."news-0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."news-0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."news-0_3".dir   = "0_3";
  inputs."news-0_3".owner = "nim-nix-pkgs";
  inputs."news-0_3".ref   = "master";
  inputs."news-0_3".repo  = "news";
  inputs."news-0_3".type  = "github";
  inputs."news-0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."news-0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."news-0_4".dir   = "0_4";
  inputs."news-0_4".owner = "nim-nix-pkgs";
  inputs."news-0_4".ref   = "master";
  inputs."news-0_4".repo  = "news";
  inputs."news-0_4".type  = "github";
  inputs."news-0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."news-0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."news-0_5".dir   = "0_5";
  inputs."news-0_5".owner = "nim-nix-pkgs";
  inputs."news-0_5".ref   = "master";
  inputs."news-0_5".repo  = "news";
  inputs."news-0_5".type  = "github";
  inputs."news-0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."news-0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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