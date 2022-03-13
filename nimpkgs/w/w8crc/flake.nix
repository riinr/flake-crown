{
  description = ''Full-featured CRC library for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."w8crc-master".dir   = "master";
  inputs."w8crc-master".owner = "nim-nix-pkgs";
  inputs."w8crc-master".ref   = "master";
  inputs."w8crc-master".repo  = "w8crc";
  inputs."w8crc-master".type  = "github";
  inputs."w8crc-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."w8crc-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."w8crc-v1_0_1".dir   = "v1_0_1";
  inputs."w8crc-v1_0_1".owner = "nim-nix-pkgs";
  inputs."w8crc-v1_0_1".ref   = "master";
  inputs."w8crc-v1_0_1".repo  = "w8crc";
  inputs."w8crc-v1_0_1".type  = "github";
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