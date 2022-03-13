{
  description = ''Bindings for libserialport, the cross-platform serial communication library.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."serialport-master".dir   = "master";
  inputs."serialport-master".owner = "nim-nix-pkgs";
  inputs."serialport-master".ref   = "master";
  inputs."serialport-master".repo  = "serialport";
  inputs."serialport-master".type  = "github";
  inputs."serialport-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serialport-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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