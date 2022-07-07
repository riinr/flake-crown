{
  description = ''CUDA bindings'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimcuda-master".dir   = "master";
  inputs."nimcuda-master".owner = "nim-nix-pkgs";
  inputs."nimcuda-master".ref   = "master";
  inputs."nimcuda-master".repo  = "nimcuda";
  inputs."nimcuda-master".type  = "github";
  inputs."nimcuda-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcuda-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcuda-0_1_1".dir   = "0_1_1";
  inputs."nimcuda-0_1_1".owner = "nim-nix-pkgs";
  inputs."nimcuda-0_1_1".ref   = "master";
  inputs."nimcuda-0_1_1".repo  = "nimcuda";
  inputs."nimcuda-0_1_1".type  = "github";
  inputs."nimcuda-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcuda-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcuda-0_1_2".dir   = "0_1_2";
  inputs."nimcuda-0_1_2".owner = "nim-nix-pkgs";
  inputs."nimcuda-0_1_2".ref   = "master";
  inputs."nimcuda-0_1_2".repo  = "nimcuda";
  inputs."nimcuda-0_1_2".type  = "github";
  inputs."nimcuda-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcuda-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcuda-0_1_3".dir   = "0_1_3";
  inputs."nimcuda-0_1_3".owner = "nim-nix-pkgs";
  inputs."nimcuda-0_1_3".ref   = "master";
  inputs."nimcuda-0_1_3".repo  = "nimcuda";
  inputs."nimcuda-0_1_3".type  = "github";
  inputs."nimcuda-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcuda-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcuda-0_1_4".dir   = "0_1_4";
  inputs."nimcuda-0_1_4".owner = "nim-nix-pkgs";
  inputs."nimcuda-0_1_4".ref   = "master";
  inputs."nimcuda-0_1_4".repo  = "nimcuda";
  inputs."nimcuda-0_1_4".type  = "github";
  inputs."nimcuda-0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcuda-0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcuda-0_1_5".dir   = "0_1_5";
  inputs."nimcuda-0_1_5".owner = "nim-nix-pkgs";
  inputs."nimcuda-0_1_5".ref   = "master";
  inputs."nimcuda-0_1_5".repo  = "nimcuda";
  inputs."nimcuda-0_1_5".type  = "github";
  inputs."nimcuda-0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcuda-0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcuda-0_1_6".dir   = "0_1_6";
  inputs."nimcuda-0_1_6".owner = "nim-nix-pkgs";
  inputs."nimcuda-0_1_6".ref   = "master";
  inputs."nimcuda-0_1_6".repo  = "nimcuda";
  inputs."nimcuda-0_1_6".type  = "github";
  inputs."nimcuda-0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcuda-0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcuda-0_1_7".dir   = "0_1_7";
  inputs."nimcuda-0_1_7".owner = "nim-nix-pkgs";
  inputs."nimcuda-0_1_7".ref   = "master";
  inputs."nimcuda-0_1_7".repo  = "nimcuda";
  inputs."nimcuda-0_1_7".type  = "github";
  inputs."nimcuda-0_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcuda-0_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcuda-0_1_8".dir   = "0_1_8";
  inputs."nimcuda-0_1_8".owner = "nim-nix-pkgs";
  inputs."nimcuda-0_1_8".ref   = "master";
  inputs."nimcuda-0_1_8".repo  = "nimcuda";
  inputs."nimcuda-0_1_8".type  = "github";
  inputs."nimcuda-0_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcuda-0_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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