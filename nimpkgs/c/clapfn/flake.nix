{
  description = ''A fast and simple command line argument parser inspired by Python's argparse.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."clapfn-master".dir   = "master";
  inputs."clapfn-master".owner = "nim-nix-pkgs";
  inputs."clapfn-master".ref   = "master";
  inputs."clapfn-master".repo  = "clapfn";
  inputs."clapfn-master".type  = "github";
  inputs."clapfn-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."clapfn-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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