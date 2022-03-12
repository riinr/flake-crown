{
  description = ''A tiny framework & language for crafting massively parallel data pipelines'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."pipelines-master".url = "path:./master";
  inputs."pipelines-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pipelines-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pipelines-v0_1_0".url = "path:./v0_1_0";
  inputs."pipelines-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pipelines-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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