{
  description = ''Simple testing framework for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimtest-master".dir   = "master";
  inputs."nimtest-master".owner = "nim-nix-pkgs";
  inputs."nimtest-master".ref   = "master";
  inputs."nimtest-master".repo  = "nimtest";
  inputs."nimtest-master".type  = "github";
  inputs."nimtest-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimtest-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimtest-v0_1_1".dir   = "v0_1_1";
  inputs."nimtest-v0_1_1".owner = "nim-nix-pkgs";
  inputs."nimtest-v0_1_1".ref   = "master";
  inputs."nimtest-v0_1_1".repo  = "nimtest";
  inputs."nimtest-v0_1_1".type  = "github";
  inputs."nimtest-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimtest-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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