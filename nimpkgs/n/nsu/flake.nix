{
  description = ''Simple screenshot library & cli tool made in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nsu-master".url = "path:./master";
  inputs."nsu-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nsu-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nsu-v0_1_4".url = "path:./v0_1_4";
  inputs."nsu-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nsu-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nsu-v0_1_5".url = "path:./v0_1_5";
  inputs."nsu-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nsu-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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