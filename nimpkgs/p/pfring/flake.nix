{
  description = ''PF_RING wrapper for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."pfring-master".url = "path:./master";
  inputs."pfring-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pfring-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pfring-0_0_2".url = "path:./0_0_2";
  inputs."pfring-0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pfring-0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pfring-0_0_3".url = "path:./0_0_3";
  inputs."pfring-0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pfring-0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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