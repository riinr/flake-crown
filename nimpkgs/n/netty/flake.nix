{
  description = ''Netty is a reliable UDP connection for games.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."netty-master".dir   = "master";
  inputs."netty-master".owner = "nim-nix-pkgs";
  inputs."netty-master".ref   = "master";
  inputs."netty-master".repo  = "netty";
  inputs."netty-master".type  = "github";
  inputs."netty-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."netty-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."netty-0_2_0".dir   = "0_2_0";
  inputs."netty-0_2_0".owner = "nim-nix-pkgs";
  inputs."netty-0_2_0".ref   = "master";
  inputs."netty-0_2_0".repo  = "netty";
  inputs."netty-0_2_0".type  = "github";
  inputs."netty-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."netty-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."netty-0_2_1".dir   = "0_2_1";
  inputs."netty-0_2_1".owner = "nim-nix-pkgs";
  inputs."netty-0_2_1".ref   = "master";
  inputs."netty-0_2_1".repo  = "netty";
  inputs."netty-0_2_1".type  = "github";
  inputs."netty-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."netty-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."netty-v0_1_0".dir   = "v0_1_0";
  inputs."netty-v0_1_0".owner = "nim-nix-pkgs";
  inputs."netty-v0_1_0".ref   = "master";
  inputs."netty-v0_1_0".repo  = "netty";
  inputs."netty-v0_1_0".type  = "github";
  inputs."netty-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."netty-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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