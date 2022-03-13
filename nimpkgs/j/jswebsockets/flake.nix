{
  description = ''Websockets wrapper for nim js backend.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."jswebsockets-master".dir   = "master";
  inputs."jswebsockets-master".owner = "nim-nix-pkgs";
  inputs."jswebsockets-master".ref   = "master";
  inputs."jswebsockets-master".repo  = "jswebsockets";
  inputs."jswebsockets-master".type  = "github";
  inputs."jswebsockets-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jswebsockets-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jswebsockets-0_1_2".dir   = "0_1_2";
  inputs."jswebsockets-0_1_2".owner = "nim-nix-pkgs";
  inputs."jswebsockets-0_1_2".ref   = "master";
  inputs."jswebsockets-0_1_2".repo  = "jswebsockets";
  inputs."jswebsockets-0_1_2".type  = "github";
  inputs."jswebsockets-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jswebsockets-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jswebsockets-0_1_3".dir   = "0_1_3";
  inputs."jswebsockets-0_1_3".owner = "nim-nix-pkgs";
  inputs."jswebsockets-0_1_3".ref   = "master";
  inputs."jswebsockets-0_1_3".repo  = "jswebsockets";
  inputs."jswebsockets-0_1_3".type  = "github";
  inputs."jswebsockets-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jswebsockets-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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