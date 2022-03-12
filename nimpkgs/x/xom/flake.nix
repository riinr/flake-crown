{
  description = ''Transform XML trees into performant JavaScript DOM calls at compile-time.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."xom-master".url = "path:./master";
  inputs."xom-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xom-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xom-v0_1-alpha".url = "path:./v0_1-alpha";
  inputs."xom-v0_1-alpha".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xom-v0_1-alpha".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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