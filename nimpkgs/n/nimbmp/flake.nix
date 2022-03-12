{
  description = ''BMP encoder and decoder'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimbmp-master".url = "path:./master";
  inputs."nimbmp-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimbmp-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimbmp-v0_1_6".url = "path:./v0_1_6";
  inputs."nimbmp-v0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimbmp-v0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimbmp-v0_1_7".url = "path:./v0_1_7";
  inputs."nimbmp-v0_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimbmp-v0_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimbmp-v0_1_8".url = "path:./v0_1_8";
  inputs."nimbmp-v0_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimbmp-v0_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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