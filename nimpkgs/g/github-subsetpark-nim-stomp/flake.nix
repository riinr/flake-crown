{
  description = ''A pure-nim implementation of the STOMP protocol for machine messaging.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."stomp-master".dir   = "master";
  inputs."stomp-master".owner = "nim-nix-pkgs";
  inputs."stomp-master".ref   = "master";
  inputs."stomp-master".repo  = "stomp";
  inputs."stomp-master".type  = "github";
  inputs."stomp-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stomp-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stomp-0_1_1".dir   = "0_1_1";
  inputs."stomp-0_1_1".owner = "nim-nix-pkgs";
  inputs."stomp-0_1_1".ref   = "master";
  inputs."stomp-0_1_1".repo  = "stomp";
  inputs."stomp-0_1_1".type  = "github";
  inputs."stomp-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stomp-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stomp-0_1_2".dir   = "0_1_2";
  inputs."stomp-0_1_2".owner = "nim-nix-pkgs";
  inputs."stomp-0_1_2".ref   = "master";
  inputs."stomp-0_1_2".repo  = "stomp";
  inputs."stomp-0_1_2".type  = "github";
  inputs."stomp-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stomp-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stomp-0_1_3".dir   = "0_1_3";
  inputs."stomp-0_1_3".owner = "nim-nix-pkgs";
  inputs."stomp-0_1_3".ref   = "master";
  inputs."stomp-0_1_3".repo  = "stomp";
  inputs."stomp-0_1_3".type  = "github";
  inputs."stomp-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stomp-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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