{
  description = ''A go routine like nim implementation'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimroutine-develop".dir   = "develop";
  inputs."nimroutine-develop".owner = "nim-nix-pkgs";
  inputs."nimroutine-develop".ref   = "master";
  inputs."nimroutine-develop".repo  = "nimroutine";
  inputs."nimroutine-develop".type  = "github";
  inputs."nimroutine-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimroutine-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimroutine-master".dir   = "master";
  inputs."nimroutine-master".owner = "nim-nix-pkgs";
  inputs."nimroutine-master".ref   = "master";
  inputs."nimroutine-master".repo  = "nimroutine";
  inputs."nimroutine-master".type  = "github";
  inputs."nimroutine-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimroutine-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimroutine-v0_1_0".dir   = "v0_1_0";
  inputs."nimroutine-v0_1_0".owner = "nim-nix-pkgs";
  inputs."nimroutine-v0_1_0".ref   = "master";
  inputs."nimroutine-v0_1_0".repo  = "nimroutine";
  inputs."nimroutine-v0_1_0".type  = "github";
  inputs."nimroutine-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimroutine-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimroutine-v0_1_1".dir   = "v0_1_1";
  inputs."nimroutine-v0_1_1".owner = "nim-nix-pkgs";
  inputs."nimroutine-v0_1_1".ref   = "master";
  inputs."nimroutine-v0_1_1".repo  = "nimroutine";
  inputs."nimroutine-v0_1_1".type  = "github";
  inputs."nimroutine-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimroutine-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimroutine-v0_1_2".dir   = "v0_1_2";
  inputs."nimroutine-v0_1_2".owner = "nim-nix-pkgs";
  inputs."nimroutine-v0_1_2".ref   = "master";
  inputs."nimroutine-v0_1_2".repo  = "nimroutine";
  inputs."nimroutine-v0_1_2".type  = "github";
  inputs."nimroutine-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimroutine-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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