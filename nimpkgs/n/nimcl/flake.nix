{
  description = ''High level wrapper over OpenCL'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimcl-master".dir   = "master";
  inputs."nimcl-master".owner = "nim-nix-pkgs";
  inputs."nimcl-master".ref   = "master";
  inputs."nimcl-master".repo  = "nimcl";
  inputs."nimcl-master".type  = "github";
  inputs."nimcl-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcl-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcl-0_1_1".dir   = "0_1_1";
  inputs."nimcl-0_1_1".owner = "nim-nix-pkgs";
  inputs."nimcl-0_1_1".ref   = "master";
  inputs."nimcl-0_1_1".repo  = "nimcl";
  inputs."nimcl-0_1_1".type  = "github";
  inputs."nimcl-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcl-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcl-0_1_2".dir   = "0_1_2";
  inputs."nimcl-0_1_2".owner = "nim-nix-pkgs";
  inputs."nimcl-0_1_2".ref   = "master";
  inputs."nimcl-0_1_2".repo  = "nimcl";
  inputs."nimcl-0_1_2".type  = "github";
  inputs."nimcl-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcl-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcl-0_1_3".dir   = "0_1_3";
  inputs."nimcl-0_1_3".owner = "nim-nix-pkgs";
  inputs."nimcl-0_1_3".ref   = "master";
  inputs."nimcl-0_1_3".repo  = "nimcl";
  inputs."nimcl-0_1_3".type  = "github";
  inputs."nimcl-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcl-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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