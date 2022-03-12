{
  description = ''A web framework inspired by ExpressJS 🐇⚡'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."phoon-master".url = "path:./master";
  inputs."phoon-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."phoon-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."phoon-v0_1_0".url = "path:./v0_1_0";
  inputs."phoon-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."phoon-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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