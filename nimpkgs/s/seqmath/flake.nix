{
  description = ''Nim math library for sequences and nested sequences (extends math library)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."seqmath-master".url = "path:./master";
  inputs."seqmath-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."seqmath-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."seqmath-0_1_2".url = "path:./0_1_2";
  inputs."seqmath-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."seqmath-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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