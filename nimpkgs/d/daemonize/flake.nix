{
  description = ''This library makes your code run as a daemon process on Unix-like systems'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."daemonize-master".url = "path:./master";
  inputs."daemonize-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."daemonize-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."daemonize-0_0_1".url = "path:./0_0_1";
  inputs."daemonize-0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."daemonize-0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."daemonize-0_0_2".url = "path:./0_0_2";
  inputs."daemonize-0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."daemonize-0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."daemonize-0_0_3".url = "path:./0_0_3";
  inputs."daemonize-0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."daemonize-0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."daemonize-0_0_5".url = "path:./0_0_5";
  inputs."daemonize-0_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."daemonize-0_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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