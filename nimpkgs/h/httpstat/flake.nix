{
  description = ''curl statistics made simple '';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."httpstat-develop".dir   = "develop";
  inputs."httpstat-develop".owner = "nim-nix-pkgs";
  inputs."httpstat-develop".ref   = "master";
  inputs."httpstat-develop".repo  = "httpstat";
  inputs."httpstat-develop".type  = "github";
  inputs."httpstat-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpstat-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."httpstat-master".dir   = "master";
  inputs."httpstat-master".owner = "nim-nix-pkgs";
  inputs."httpstat-master".ref   = "master";
  inputs."httpstat-master".repo  = "httpstat";
  inputs."httpstat-master".type  = "github";
  inputs."httpstat-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpstat-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."httpstat-v0_1_0".dir   = "v0_1_0";
  inputs."httpstat-v0_1_0".owner = "nim-nix-pkgs";
  inputs."httpstat-v0_1_0".ref   = "master";
  inputs."httpstat-v0_1_0".repo  = "httpstat";
  inputs."httpstat-v0_1_0".type  = "github";
  inputs."httpstat-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpstat-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."httpstat-v0_1_1".dir   = "v0_1_1";
  inputs."httpstat-v0_1_1".owner = "nim-nix-pkgs";
  inputs."httpstat-v0_1_1".ref   = "master";
  inputs."httpstat-v0_1_1".repo  = "httpstat";
  inputs."httpstat-v0_1_1".type  = "github";
  inputs."httpstat-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpstat-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."httpstat-v0_1_2".dir   = "v0_1_2";
  inputs."httpstat-v0_1_2".owner = "nim-nix-pkgs";
  inputs."httpstat-v0_1_2".ref   = "master";
  inputs."httpstat-v0_1_2".repo  = "httpstat";
  inputs."httpstat-v0_1_2".type  = "github";
  inputs."httpstat-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpstat-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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