{
  description = ''Convert accents (diacritics) from strings to latin characters.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."latinize-master".url = "path:./master";
  inputs."latinize-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."latinize-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."latinize-v0_1".url = "path:./v0_1";
  inputs."latinize-v0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."latinize-v0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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