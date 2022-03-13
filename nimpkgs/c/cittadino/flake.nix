{
  description = ''A simple PubSub framework using STOMP.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."cittadino-master".dir   = "master";
  inputs."cittadino-master".owner = "nim-nix-pkgs";
  inputs."cittadino-master".ref   = "master";
  inputs."cittadino-master".repo  = "cittadino";
  inputs."cittadino-master".type  = "github";
  inputs."cittadino-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cittadino-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cittadino-0_1_0".dir   = "0_1_0";
  inputs."cittadino-0_1_0".owner = "nim-nix-pkgs";
  inputs."cittadino-0_1_0".ref   = "master";
  inputs."cittadino-0_1_0".repo  = "cittadino";
  inputs."cittadino-0_1_0".type  = "github";
  inputs."cittadino-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cittadino-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cittadino-0_1_1".dir   = "0_1_1";
  inputs."cittadino-0_1_1".owner = "nim-nix-pkgs";
  inputs."cittadino-0_1_1".ref   = "master";
  inputs."cittadino-0_1_1".repo  = "cittadino";
  inputs."cittadino-0_1_1".type  = "github";
  inputs."cittadino-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cittadino-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cittadino-0_1_2".dir   = "0_1_2";
  inputs."cittadino-0_1_2".owner = "nim-nix-pkgs";
  inputs."cittadino-0_1_2".ref   = "master";
  inputs."cittadino-0_1_2".repo  = "cittadino";
  inputs."cittadino-0_1_2".type  = "github";
  inputs."cittadino-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cittadino-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cittadino-0_1_4".dir   = "0_1_4";
  inputs."cittadino-0_1_4".owner = "nim-nix-pkgs";
  inputs."cittadino-0_1_4".ref   = "master";
  inputs."cittadino-0_1_4".repo  = "cittadino";
  inputs."cittadino-0_1_4".type  = "github";
  inputs."cittadino-0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cittadino-0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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