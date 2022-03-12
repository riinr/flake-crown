{
  description = ''A library to automatically encrypt all string constants in your programs'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."strenc-master".url = "path:./master";
  inputs."strenc-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."strenc-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."strenc-0_1".url = "path:./0_1";
  inputs."strenc-0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."strenc-0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."strenc-0_1_1".url = "path:./0_1_1";
  inputs."strenc-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."strenc-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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