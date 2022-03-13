{
  description = ''Access bit mapped portions of bytes in binary data as int variables'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."mapbits-master".dir   = "master";
  inputs."mapbits-master".owner = "nim-nix-pkgs";
  inputs."mapbits-master".ref   = "master";
  inputs."mapbits-master".repo  = "mapbits";
  inputs."mapbits-master".type  = "github";
  inputs."mapbits-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mapbits-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mapbits-1_0".dir   = "1_0";
  inputs."mapbits-1_0".owner = "nim-nix-pkgs";
  inputs."mapbits-1_0".ref   = "master";
  inputs."mapbits-1_0".repo  = "mapbits";
  inputs."mapbits-1_0".type  = "github";
  inputs."mapbits-1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mapbits-1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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