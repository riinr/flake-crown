{
  description = ''Steganography - hide data inside an image.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."steganography-master".dir   = "master";
  inputs."steganography-master".owner = "nim-nix-pkgs";
  inputs."steganography-master".ref   = "master";
  inputs."steganography-master".repo  = "steganography";
  inputs."steganography-master".type  = "github";
  inputs."steganography-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."steganography-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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