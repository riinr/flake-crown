{
  description = ''Text template processor, basic capabilities'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."tmplpro-master".url = "path:./master";
  inputs."tmplpro-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tmplpro-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."tmplpro-unstable".url = "path:./unstable";
  inputs."tmplpro-unstable".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tmplpro-unstable".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."tmplpro-v0_1_0".url = "path:./v0_1_0";
  inputs."tmplpro-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tmplpro-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."tmplpro-v0_1_1".url = "path:./v0_1_1";
  inputs."tmplpro-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tmplpro-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."tmplpro-v0_1_2".url = "path:./v0_1_2";
  inputs."tmplpro-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tmplpro-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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