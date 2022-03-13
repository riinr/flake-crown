{
  description = ''Support for ensemble file format and arithmetic using jackknife/bootstrap propagation of errors'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ensem-master".dir   = "master";
  inputs."ensem-master".owner = "nim-nix-pkgs";
  inputs."ensem-master".ref   = "master";
  inputs."ensem-master".repo  = "ensem";
  inputs."ensem-master".type  = "github";
  inputs."ensem-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ensem-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ensem-v1_0_0".dir   = "v1_0_0";
  inputs."ensem-v1_0_0".owner = "nim-nix-pkgs";
  inputs."ensem-v1_0_0".ref   = "master";
  inputs."ensem-v1_0_0".repo  = "ensem";
  inputs."ensem-v1_0_0".type  = "github";
  inputs."ensem-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ensem-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ensem-v1_1_0".dir   = "v1_1_0";
  inputs."ensem-v1_1_0".owner = "nim-nix-pkgs";
  inputs."ensem-v1_1_0".ref   = "master";
  inputs."ensem-v1_1_0".repo  = "ensem";
  inputs."ensem-v1_1_0".type  = "github";
  inputs."ensem-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ensem-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ensem-v1_2_1".dir   = "v1_2_1";
  inputs."ensem-v1_2_1".owner = "nim-nix-pkgs";
  inputs."ensem-v1_2_1".ref   = "master";
  inputs."ensem-v1_2_1".repo  = "ensem";
  inputs."ensem-v1_2_1".type  = "github";
  inputs."ensem-v1_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ensem-v1_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ensem-v1_2_2".dir   = "v1_2_2";
  inputs."ensem-v1_2_2".owner = "nim-nix-pkgs";
  inputs."ensem-v1_2_2".ref   = "master";
  inputs."ensem-v1_2_2".repo  = "ensem";
  inputs."ensem-v1_2_2".type  = "github";
  inputs."ensem-v1_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ensem-v1_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ensem-v1_3_0".dir   = "v1_3_0";
  inputs."ensem-v1_3_0".owner = "nim-nix-pkgs";
  inputs."ensem-v1_3_0".ref   = "master";
  inputs."ensem-v1_3_0".repo  = "ensem";
  inputs."ensem-v1_3_0".type  = "github";
  inputs."ensem-v1_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ensem-v1_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ensem-v1_3_1".dir   = "v1_3_1";
  inputs."ensem-v1_3_1".owner = "nim-nix-pkgs";
  inputs."ensem-v1_3_1".ref   = "master";
  inputs."ensem-v1_3_1".repo  = "ensem";
  inputs."ensem-v1_3_1".type  = "github";
  inputs."ensem-v1_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ensem-v1_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ensem-v1_3_2".dir   = "v1_3_2";
  inputs."ensem-v1_3_2".owner = "nim-nix-pkgs";
  inputs."ensem-v1_3_2".ref   = "master";
  inputs."ensem-v1_3_2".repo  = "ensem";
  inputs."ensem-v1_3_2".type  = "github";
  inputs."ensem-v1_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ensem-v1_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ensem-v1_4_0".dir   = "v1_4_0";
  inputs."ensem-v1_4_0".owner = "nim-nix-pkgs";
  inputs."ensem-v1_4_0".ref   = "master";
  inputs."ensem-v1_4_0".repo  = "ensem";
  inputs."ensem-v1_4_0".type  = "github";
  inputs."ensem-v1_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ensem-v1_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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