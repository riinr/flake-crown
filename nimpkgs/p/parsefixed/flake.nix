{
  description = ''Parse fixed-width fields within lines of text (complementary to parsecsv)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."parsefixed-master".url = "path:./master";
  inputs."parsefixed-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."parsefixed-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."parsefixed-0_1_2".url = "path:./0_1_2";
  inputs."parsefixed-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."parsefixed-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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