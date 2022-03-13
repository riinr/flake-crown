{
  description = ''A bunch of macros. sugar if you would'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimspice-master".dir   = "master";
  inputs."nimspice-master".owner = "nim-nix-pkgs";
  inputs."nimspice-master".ref   = "master";
  inputs."nimspice-master".repo  = "nimspice";
  inputs."nimspice-master".type  = "github";
  inputs."nimspice-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimspice-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimspice-v0_1_0".dir   = "v0_1_0";
  inputs."nimspice-v0_1_0".owner = "nim-nix-pkgs";
  inputs."nimspice-v0_1_0".ref   = "master";
  inputs."nimspice-v0_1_0".repo  = "nimspice";
  inputs."nimspice-v0_1_0".type  = "github";
  inputs."nimspice-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimspice-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimspice-v0_1_2".dir   = "v0_1_2";
  inputs."nimspice-v0_1_2".owner = "nim-nix-pkgs";
  inputs."nimspice-v0_1_2".ref   = "master";
  inputs."nimspice-v0_1_2".repo  = "nimspice";
  inputs."nimspice-v0_1_2".type  = "github";
  inputs."nimspice-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimspice-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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