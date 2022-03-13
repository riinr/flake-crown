{
  description = ''Simple and compact fuzzing'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimfuzz-master".dir   = "master";
  inputs."nimfuzz-master".owner = "nim-nix-pkgs";
  inputs."nimfuzz-master".ref   = "master";
  inputs."nimfuzz-master".repo  = "nimfuzz";
  inputs."nimfuzz-master".type  = "github";
  inputs."nimfuzz-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfuzz-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfuzz-1_2_0".dir   = "1_2_0";
  inputs."nimfuzz-1_2_0".owner = "nim-nix-pkgs";
  inputs."nimfuzz-1_2_0".ref   = "master";
  inputs."nimfuzz-1_2_0".repo  = "nimfuzz";
  inputs."nimfuzz-1_2_0".type  = "github";
  inputs."nimfuzz-1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfuzz-1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfuzz-v1_0_0".dir   = "v1_0_0";
  inputs."nimfuzz-v1_0_0".owner = "nim-nix-pkgs";
  inputs."nimfuzz-v1_0_0".ref   = "master";
  inputs."nimfuzz-v1_0_0".repo  = "nimfuzz";
  inputs."nimfuzz-v1_0_0".type  = "github";
  inputs."nimfuzz-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfuzz-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfuzz-v1_1_0".dir   = "v1_1_0";
  inputs."nimfuzz-v1_1_0".owner = "nim-nix-pkgs";
  inputs."nimfuzz-v1_1_0".ref   = "master";
  inputs."nimfuzz-v1_1_0".repo  = "nimfuzz";
  inputs."nimfuzz-v1_1_0".type  = "github";
  inputs."nimfuzz-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfuzz-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfuzz-v1_3_0".dir   = "v1_3_0";
  inputs."nimfuzz-v1_3_0".owner = "nim-nix-pkgs";
  inputs."nimfuzz-v1_3_0".ref   = "master";
  inputs."nimfuzz-v1_3_0".repo  = "nimfuzz";
  inputs."nimfuzz-v1_3_0".type  = "github";
  inputs."nimfuzz-v1_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfuzz-v1_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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