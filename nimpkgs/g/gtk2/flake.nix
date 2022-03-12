{
  description = ''Wrapper for gtk2, a feature rich toolkit for creating graphical user interfaces'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."gtk2-master".url = "path:./master";
  inputs."gtk2-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gtk2-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gtk2-v1_0".url = "path:./v1_0";
  inputs."gtk2-v1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gtk2-v1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gtk2-v1_2".url = "path:./v1_2";
  inputs."gtk2-v1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gtk2-v1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gtk2-v1_3".url = "path:./v1_3";
  inputs."gtk2-v1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gtk2-v1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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