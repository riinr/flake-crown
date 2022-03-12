{
  description = ''Lightweight i3 status bar.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimi3status-master".url = "path:./master";
  inputs."nimi3status-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimi3status-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimi3status-0_2_0".url = "path:./0_2_0";
  inputs."nimi3status-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimi3status-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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