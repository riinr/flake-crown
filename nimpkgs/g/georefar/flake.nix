{
  description = ''GeoRef Argentina Government MultiSync API Client for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."georefar-master".url = "path:./master";
  inputs."georefar-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."georefar-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."georefar-0_1_5".url = "path:./0_1_5";
  inputs."georefar-0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."georefar-0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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