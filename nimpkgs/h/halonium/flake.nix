{
  description = ''A browser automation library written in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."halonium-master".url = "path:./master";
  inputs."halonium-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."halonium-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."halonium-0_2_3".url = "path:./0_2_3";
  inputs."halonium-0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."halonium-0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."halonium-0_2_4".url = "path:./0_2_4";
  inputs."halonium-0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."halonium-0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."halonium-0_2_5".url = "path:./0_2_5";
  inputs."halonium-0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."halonium-0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."halonium-0_2_6".url = "path:./0_2_6";
  inputs."halonium-0_2_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."halonium-0_2_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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