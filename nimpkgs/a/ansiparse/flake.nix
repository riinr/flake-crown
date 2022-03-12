{
  description = ''Library to parse ANSI escape codes'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ansiparse-master".url = "path:./master";
  inputs."ansiparse-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiparse-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiparse-v0_2_0".url = "path:./v0_2_0";
  inputs."ansiparse-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiparse-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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