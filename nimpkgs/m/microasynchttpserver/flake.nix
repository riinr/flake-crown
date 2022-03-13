{
  description = ''A thin asynchronous HTTP server library, API compatible with Nim's built-in asynchttpserver.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."microasynchttpserver-master".dir   = "master";
  inputs."microasynchttpserver-master".owner = "nim-nix-pkgs";
  inputs."microasynchttpserver-master".ref   = "master";
  inputs."microasynchttpserver-master".repo  = "microasynchttpserver";
  inputs."microasynchttpserver-master".type  = "github";
  inputs."microasynchttpserver-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."microasynchttpserver-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."microasynchttpserver-0_10_0".dir   = "0_10_0";
  inputs."microasynchttpserver-0_10_0".owner = "nim-nix-pkgs";
  inputs."microasynchttpserver-0_10_0".ref   = "master";
  inputs."microasynchttpserver-0_10_0".repo  = "microasynchttpserver";
  inputs."microasynchttpserver-0_10_0".type  = "github";
  inputs."microasynchttpserver-0_10_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."microasynchttpserver-0_10_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."microasynchttpserver-0_10_1".dir   = "0_10_1";
  inputs."microasynchttpserver-0_10_1".owner = "nim-nix-pkgs";
  inputs."microasynchttpserver-0_10_1".ref   = "master";
  inputs."microasynchttpserver-0_10_1".repo  = "microasynchttpserver";
  inputs."microasynchttpserver-0_10_1".type  = "github";
  inputs."microasynchttpserver-0_10_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."microasynchttpserver-0_10_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."microasynchttpserver-0_10_2".dir   = "0_10_2";
  inputs."microasynchttpserver-0_10_2".owner = "nim-nix-pkgs";
  inputs."microasynchttpserver-0_10_2".ref   = "master";
  inputs."microasynchttpserver-0_10_2".repo  = "microasynchttpserver";
  inputs."microasynchttpserver-0_10_2".type  = "github";
  inputs."microasynchttpserver-0_10_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."microasynchttpserver-0_10_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."microasynchttpserver-0_9_0".dir   = "0_9_0";
  inputs."microasynchttpserver-0_9_0".owner = "nim-nix-pkgs";
  inputs."microasynchttpserver-0_9_0".ref   = "master";
  inputs."microasynchttpserver-0_9_0".repo  = "microasynchttpserver";
  inputs."microasynchttpserver-0_9_0".type  = "github";
  inputs."microasynchttpserver-0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."microasynchttpserver-0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."microasynchttpserver-0_9_5".dir   = "0_9_5";
  inputs."microasynchttpserver-0_9_5".owner = "nim-nix-pkgs";
  inputs."microasynchttpserver-0_9_5".ref   = "master";
  inputs."microasynchttpserver-0_9_5".repo  = "microasynchttpserver";
  inputs."microasynchttpserver-0_9_5".type  = "github";
  inputs."microasynchttpserver-0_9_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."microasynchttpserver-0_9_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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