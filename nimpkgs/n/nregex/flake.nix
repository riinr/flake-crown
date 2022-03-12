{
  description = ''A DFA based regex engine'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nregex-master".url = "path:./master";
  inputs."nregex-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nregex-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nregex-v0_0_1".url = "path:./v0_0_1";
  inputs."nregex-v0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nregex-v0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nregex-v0_0_2".url = "path:./v0_0_2";
  inputs."nregex-v0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nregex-v0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nregex-v0_0_3".url = "path:./v0_0_3";
  inputs."nregex-v0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nregex-v0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nregex-v0_0_4".url = "path:./v0_0_4";
  inputs."nregex-v0_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nregex-v0_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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