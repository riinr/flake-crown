{
  description = ''tnim is a Nim REPL - an interactive sandbox for testing Nim code'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."tnim-master".dir   = "master";
  inputs."tnim-master".owner = "nim-nix-pkgs";
  inputs."tnim-master".ref   = "master";
  inputs."tnim-master".repo  = "tnim";
  inputs."tnim-master".type  = "github";
  inputs."tnim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tnim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."tnim-2_0_4".dir   = "2_0_4";
  inputs."tnim-2_0_4".owner = "nim-nix-pkgs";
  inputs."tnim-2_0_4".ref   = "master";
  inputs."tnim-2_0_4".repo  = "tnim";
  inputs."tnim-2_0_4".type  = "github";
  inputs."tnim-2_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tnim-2_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."tnim-2_0_5".dir   = "2_0_5";
  inputs."tnim-2_0_5".owner = "nim-nix-pkgs";
  inputs."tnim-2_0_5".ref   = "master";
  inputs."tnim-2_0_5".repo  = "tnim";
  inputs."tnim-2_0_5".type  = "github";
  inputs."tnim-2_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tnim-2_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."tnim-2_0_6".dir   = "2_0_6";
  inputs."tnim-2_0_6".owner = "nim-nix-pkgs";
  inputs."tnim-2_0_6".ref   = "master";
  inputs."tnim-2_0_6".repo  = "tnim";
  inputs."tnim-2_0_6".type  = "github";
  inputs."tnim-2_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tnim-2_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."tnim-v2_0_6".dir   = "v2_0_6";
  inputs."tnim-v2_0_6".owner = "nim-nix-pkgs";
  inputs."tnim-v2_0_6".ref   = "master";
  inputs."tnim-v2_0_6".repo  = "tnim";
  inputs."tnim-v2_0_6".type  = "github";
  inputs."tnim-v2_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tnim-v2_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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