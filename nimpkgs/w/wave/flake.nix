{
  description = ''wave is a tiny WAV sound module'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."wave-develop".url = "path:./develop";
  inputs."wave-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wave-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wave-master".url = "path:./master";
  inputs."wave-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wave-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wave-v1_0_0".url = "path:./v1_0_0";
  inputs."wave-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wave-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wave-v1_1_0".url = "path:./v1_1_0";
  inputs."wave-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wave-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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