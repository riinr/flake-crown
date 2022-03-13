{
  description = ''This library makes your code run as a daemon process on Unix-like systems'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."daemonize-master".dir   = "master";
  inputs."daemonize-master".owner = "nim-nix-pkgs";
  inputs."daemonize-master".ref   = "master";
  inputs."daemonize-master".repo  = "daemonize";
  inputs."daemonize-master".type  = "github";
  inputs."daemonize-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."daemonize-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."daemonize-0_0_1".dir   = "0_0_1";
  inputs."daemonize-0_0_1".owner = "nim-nix-pkgs";
  inputs."daemonize-0_0_1".ref   = "master";
  inputs."daemonize-0_0_1".repo  = "daemonize";
  inputs."daemonize-0_0_1".type  = "github";
  inputs."daemonize-0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."daemonize-0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."daemonize-0_0_2".dir   = "0_0_2";
  inputs."daemonize-0_0_2".owner = "nim-nix-pkgs";
  inputs."daemonize-0_0_2".ref   = "master";
  inputs."daemonize-0_0_2".repo  = "daemonize";
  inputs."daemonize-0_0_2".type  = "github";
  inputs."daemonize-0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."daemonize-0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."daemonize-0_0_3".dir   = "0_0_3";
  inputs."daemonize-0_0_3".owner = "nim-nix-pkgs";
  inputs."daemonize-0_0_3".ref   = "master";
  inputs."daemonize-0_0_3".repo  = "daemonize";
  inputs."daemonize-0_0_3".type  = "github";
  inputs."daemonize-0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."daemonize-0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."daemonize-0_0_5".dir   = "0_0_5";
  inputs."daemonize-0_0_5".owner = "nim-nix-pkgs";
  inputs."daemonize-0_0_5".ref   = "master";
  inputs."daemonize-0_0_5".repo  = "daemonize";
  inputs."daemonize-0_0_5".type  = "github";
  inputs."daemonize-0_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."daemonize-0_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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