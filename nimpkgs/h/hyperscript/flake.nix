{
  description = ''Create HyperText with Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."hyperscript-master".url = "path:./master";
  inputs."hyperscript-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hyperscript-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hyperscript-v0_1-alpha".url = "path:./v0_1-alpha";
  inputs."hyperscript-v0_1-alpha".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hyperscript-v0_1-alpha".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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