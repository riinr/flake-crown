{
  description = ''Expression-based pipe operators with placeholder argument'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."pipexp-main".dir   = "main";
  inputs."pipexp-main".owner = "nim-nix-pkgs";
  inputs."pipexp-main".ref   = "master";
  inputs."pipexp-main".repo  = "pipexp";
  inputs."pipexp-main".type  = "github";
  inputs."pipexp-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pipexp-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pipexp-0_1_0".dir   = "0_1_0";
  inputs."pipexp-0_1_0".owner = "nim-nix-pkgs";
  inputs."pipexp-0_1_0".ref   = "master";
  inputs."pipexp-0_1_0".repo  = "pipexp";
  inputs."pipexp-0_1_0".type  = "github";
  inputs."pipexp-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pipexp-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pipexp-0_2_0".dir   = "0_2_0";
  inputs."pipexp-0_2_0".owner = "nim-nix-pkgs";
  inputs."pipexp-0_2_0".ref   = "master";
  inputs."pipexp-0_2_0".repo  = "pipexp";
  inputs."pipexp-0_2_0".type  = "github";
  inputs."pipexp-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pipexp-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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