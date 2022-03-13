{
  description = ''A port of mdbook to nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimibook-main".dir   = "main";
  inputs."nimibook-main".owner = "nim-nix-pkgs";
  inputs."nimibook-main".ref   = "master";
  inputs."nimibook-main".repo  = "nimibook";
  inputs."nimibook-main".type  = "github";
  inputs."nimibook-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimibook-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimibook-v0_2_0".dir   = "v0_2_0";
  inputs."nimibook-v0_2_0".owner = "nim-nix-pkgs";
  inputs."nimibook-v0_2_0".ref   = "master";
  inputs."nimibook-v0_2_0".repo  = "nimibook";
  inputs."nimibook-v0_2_0".type  = "github";
  inputs."nimibook-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimibook-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimibook-v0_2_1".dir   = "v0_2_1";
  inputs."nimibook-v0_2_1".owner = "nim-nix-pkgs";
  inputs."nimibook-v0_2_1".ref   = "master";
  inputs."nimibook-v0_2_1".repo  = "nimibook";
  inputs."nimibook-v0_2_1".type  = "github";
  inputs."nimibook-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimibook-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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