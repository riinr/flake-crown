{
  description = ''An Adaptive Index Library For Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."adix-master".url = "path:./master";
  inputs."adix-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."adix-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."adix-0_2_0".url = "path:./0_2_0";
  inputs."adix-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."adix-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."adix-0_2_1".url = "path:./0_2_1";
  inputs."adix-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."adix-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."adix-v0_3_0".url = "path:./v0_3_0";
  inputs."adix-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."adix-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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