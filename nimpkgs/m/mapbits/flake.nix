{
  description = ''Access bit mapped portions of bytes in binary data as int variables'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."mapbits-master".url = "path:./master";
  inputs."mapbits-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mapbits-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mapbits-1_0".url = "path:./1_0";
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