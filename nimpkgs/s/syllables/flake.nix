{
  description = ''Syllable estimation for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."syllables-main".url = "path:./main";
  inputs."syllables-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."syllables-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."syllables-v1_0_0".url = "path:./v1_0_0";
  inputs."syllables-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."syllables-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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