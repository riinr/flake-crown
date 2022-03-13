{
  description = ''Terminal UI based cd command'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."qwertycd-master".dir   = "master";
  inputs."qwertycd-master".owner = "nim-nix-pkgs";
  inputs."qwertycd-master".ref   = "master";
  inputs."qwertycd-master".repo  = "qwertycd";
  inputs."qwertycd-master".type  = "github";
  inputs."qwertycd-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."qwertycd-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."qwertycd-v0_1_0".dir   = "v0_1_0";
  inputs."qwertycd-v0_1_0".owner = "nim-nix-pkgs";
  inputs."qwertycd-v0_1_0".ref   = "master";
  inputs."qwertycd-v0_1_0".repo  = "qwertycd";
  inputs."qwertycd-v0_1_0".type  = "github";
  inputs."qwertycd-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."qwertycd-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."qwertycd-v0_1_1".dir   = "v0_1_1";
  inputs."qwertycd-v0_1_1".owner = "nim-nix-pkgs";
  inputs."qwertycd-v0_1_1".ref   = "master";
  inputs."qwertycd-v0_1_1".repo  = "qwertycd";
  inputs."qwertycd-v0_1_1".type  = "github";
  inputs."qwertycd-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."qwertycd-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."qwertycd-v0_1_2".dir   = "v0_1_2";
  inputs."qwertycd-v0_1_2".owner = "nim-nix-pkgs";
  inputs."qwertycd-v0_1_2".ref   = "master";
  inputs."qwertycd-v0_1_2".repo  = "qwertycd";
  inputs."qwertycd-v0_1_2".type  = "github";
  inputs."qwertycd-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."qwertycd-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."qwertycd-v0_1_3".dir   = "v0_1_3";
  inputs."qwertycd-v0_1_3".owner = "nim-nix-pkgs";
  inputs."qwertycd-v0_1_3".ref   = "master";
  inputs."qwertycd-v0_1_3".repo  = "qwertycd";
  inputs."qwertycd-v0_1_3".type  = "github";
  inputs."qwertycd-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."qwertycd-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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