{
  description = ''dbus bindings for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."dbus-devel".dir   = "devel";
  inputs."dbus-devel".owner = "nim-nix-pkgs";
  inputs."dbus-devel".ref   = "master";
  inputs."dbus-devel".repo  = "dbus";
  inputs."dbus-devel".type  = "github";
  inputs."dbus-devel".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dbus-devel".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dbus-master".dir   = "master";
  inputs."dbus-master".owner = "nim-nix-pkgs";
  inputs."dbus-master".ref   = "master";
  inputs."dbus-master".repo  = "dbus";
  inputs."dbus-master".type  = "github";
  inputs."dbus-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dbus-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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