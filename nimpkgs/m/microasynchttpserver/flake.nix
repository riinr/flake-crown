{
  description = ''A thin asynchronous HTTP server library, API compatible with Nim's built-in asynchttpserver.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."microasynchttpserver-master".url = "path:./master";
  inputs."microasynchttpserver-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."microasynchttpserver-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."microasynchttpserver-0_10_0".url = "path:./0_10_0";
  inputs."microasynchttpserver-0_10_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."microasynchttpserver-0_10_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."microasynchttpserver-0_10_1".url = "path:./0_10_1";
  inputs."microasynchttpserver-0_10_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."microasynchttpserver-0_10_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."microasynchttpserver-0_10_2".url = "path:./0_10_2";
  inputs."microasynchttpserver-0_10_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."microasynchttpserver-0_10_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."microasynchttpserver-0_9_0".url = "path:./0_9_0";
  inputs."microasynchttpserver-0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."microasynchttpserver-0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."microasynchttpserver-0_9_5".url = "path:./0_9_5";
  inputs."microasynchttpserver-0_9_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."microasynchttpserver-0_9_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"]
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}