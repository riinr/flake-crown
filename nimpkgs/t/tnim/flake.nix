{
  description = ''tnim is a Nim REPL - an interactive sandbox for testing Nim code'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."tnim-master".url = "path:./master";
  inputs."tnim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tnim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."tnim-2_0_4".url = "path:./2_0_4";
  inputs."tnim-2_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tnim-2_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."tnim-2_0_5".url = "path:./2_0_5";
  inputs."tnim-2_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tnim-2_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."tnim-2_0_6".url = "path:./2_0_6";
  inputs."tnim-2_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tnim-2_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."tnim-v2_0_6".url = "path:./v2_0_6";
  inputs."tnim-v2_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tnim-v2_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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