{
  description = ''Consistent Overhead Byte Stuffing for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."cobs-master".dir   = "master";
  inputs."cobs-master".owner = "nim-nix-pkgs";
  inputs."cobs-master".ref   = "master";
  inputs."cobs-master".repo  = "cobs";
  inputs."cobs-master".type  = "github";
  inputs."cobs-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cobs-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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