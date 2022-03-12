{
  description = ''A wrapper of the ORX 2.5D game engine'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."norx-master".url = "path:./master";
  inputs."norx-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norx-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norx-0_4_2".url = "path:./0_4_2";
  inputs."norx-0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norx-0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norx-0_4_3".url = "path:./0_4_3";
  inputs."norx-0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norx-0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"]
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}