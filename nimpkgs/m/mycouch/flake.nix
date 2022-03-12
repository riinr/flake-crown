{
  description = ''a couchDB client written in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."mycouch-main".url = "path:./main";
  inputs."mycouch-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mycouch-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mycouch-0_2".url = "path:./0_2";
  inputs."mycouch-0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mycouch-0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mycouch-0_4_0".url = "path:./0_4_0";
  inputs."mycouch-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mycouch-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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