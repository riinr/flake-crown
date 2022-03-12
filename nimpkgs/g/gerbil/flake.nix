{
  description = ''A dynamic website generator'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."gerbil-master".url = "path:./master";
  inputs."gerbil-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gerbil-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gerbil-v0_1_0".url = "path:./v0_1_0";
  inputs."gerbil-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gerbil-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gerbil-v0_1_1".url = "path:./v0_1_1";
  inputs."gerbil-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gerbil-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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