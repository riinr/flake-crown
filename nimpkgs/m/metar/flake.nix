{
  description = ''Read metadata from jpeg and tiff images.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."metar-master".url = "path:./master";
  inputs."metar-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."metar-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."metar-v0_1_23".url = "path:./v0_1_23";
  inputs."metar-v0_1_23".inputs.nixpkgs.follows = "nixpkgs";
  inputs."metar-v0_1_23".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."metar-v0_1_25".url = "path:./v0_1_25";
  inputs."metar-v0_1_25".inputs.nixpkgs.follows = "nixpkgs";
  inputs."metar-v0_1_25".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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