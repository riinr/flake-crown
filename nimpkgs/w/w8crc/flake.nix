{
  description = ''Full-featured CRC library for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."w8crc-master".url = "path:./master";
  inputs."w8crc-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."w8crc-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."w8crc-v1_0_1".url = "path:./v1_0_1";
  inputs."w8crc-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."w8crc-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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