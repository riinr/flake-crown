{
  description = ''A library to create interactive commandline menus without writing boilerplate code.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."cli_menu-master".dir   = "master";
  inputs."cli_menu-master".owner = "nim-nix-pkgs";
  inputs."cli_menu-master".ref   = "master";
  inputs."cli_menu-master".repo  = "cli_menu";
  inputs."cli_menu-master".type  = "github";
  inputs."cli_menu-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cli_menu-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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