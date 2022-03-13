{
  description = ''Battery widget for command prompt. Written in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."battery_widget-master".dir   = "master";
  inputs."battery_widget-master".owner = "nim-nix-pkgs";
  inputs."battery_widget-master".ref   = "master";
  inputs."battery_widget-master".repo  = "battery_widget";
  inputs."battery_widget-master".type  = "github";
  inputs."battery_widget-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."battery_widget-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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