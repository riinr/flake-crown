{
  description = ''Wrapper for cairo, a vector graphics library with display and print output'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."cairo-master".url = "path:./master";
  inputs."cairo-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cairo-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cairo-1_1_0".url = "path:./1_1_0";
  inputs."cairo-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cairo-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cairo-1_1_1".url = "path:./1_1_1";
  inputs."cairo-1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cairo-1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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