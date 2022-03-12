{
  description = ''mmap-persistent SymSpell spell checking algorithm'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."suggest-master".url = "path:./master";
  inputs."suggest-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."suggest-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."suggest-v1_0".url = "path:./v1_0";
  inputs."suggest-v1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."suggest-v1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."suggest-v1_1".url = "path:./v1_1";
  inputs."suggest-v1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."suggest-v1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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