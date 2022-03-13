{
  description = ''Obsolete - please use serialport instead!'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."io-serialport-master".dir   = "master";
  inputs."io-serialport-master".owner = "nim-nix-pkgs";
  inputs."io-serialport-master".ref   = "master";
  inputs."io-serialport-master".repo  = "io-serialport";
  inputs."io-serialport-master".type  = "github";
  inputs."io-serialport-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."io-serialport-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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