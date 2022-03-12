{
  description = ''Text parsing utilities'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."hparse-master".url = "path:./master";
  inputs."hparse-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hparse-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hparse-v0_2_4".url = "path:./v0_2_4";
  inputs."hparse-v0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hparse-v0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hparse-v0_2_5".url = "path:./v0_2_5";
  inputs."hparse-v0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hparse-v0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hparse-v0_2_6".url = "path:./v0_2_6";
  inputs."hparse-v0_2_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hparse-v0_2_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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