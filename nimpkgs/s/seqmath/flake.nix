{
  description = ''Nim math library for sequences and nested sequences (extends math library)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."seqmath-master".dir   = "master";
  inputs."seqmath-master".owner = "nim-nix-pkgs";
  inputs."seqmath-master".ref   = "master";
  inputs."seqmath-master".repo  = "seqmath";
  inputs."seqmath-master".type  = "github";
  inputs."seqmath-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."seqmath-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."seqmath-0_1_2".dir   = "0_1_2";
  inputs."seqmath-0_1_2".owner = "nim-nix-pkgs";
  inputs."seqmath-0_1_2".ref   = "master";
  inputs."seqmath-0_1_2".repo  = "seqmath";
  inputs."seqmath-0_1_2".type  = "github";
  inputs."seqmath-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."seqmath-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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