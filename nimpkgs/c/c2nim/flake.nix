{
  description = ''c2nim is a tool to translate Ansi C code to Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."c2nim-master".url = "path:./master";
  inputs."c2nim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."c2nim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."c2nim-0_9_15".url = "path:./0_9_15";
  inputs."c2nim-0_9_15".inputs.nixpkgs.follows = "nixpkgs";
  inputs."c2nim-0_9_15".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."c2nim-0_9_16".url = "path:./0_9_16";
  inputs."c2nim-0_9_16".inputs.nixpkgs.follows = "nixpkgs";
  inputs."c2nim-0_9_16".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."c2nim-0_9_17".url = "path:./0_9_17";
  inputs."c2nim-0_9_17".inputs.nixpkgs.follows = "nixpkgs";
  inputs."c2nim-0_9_17".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."c2nim-0_9_18".url = "path:./0_9_18";
  inputs."c2nim-0_9_18".inputs.nixpkgs.follows = "nixpkgs";
  inputs."c2nim-0_9_18".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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