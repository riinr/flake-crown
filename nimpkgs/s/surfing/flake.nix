{
  description = ''Surfing is a highly functional CLI for Base64.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."surfing-develop".dir   = "develop";
  inputs."surfing-develop".owner = "nim-nix-pkgs";
  inputs."surfing-develop".ref   = "master";
  inputs."surfing-develop".repo  = "surfing";
  inputs."surfing-develop".type  = "github";
  inputs."surfing-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."surfing-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."surfing-main".dir   = "main";
  inputs."surfing-main".owner = "nim-nix-pkgs";
  inputs."surfing-main".ref   = "master";
  inputs."surfing-main".repo  = "surfing";
  inputs."surfing-main".type  = "github";
  inputs."surfing-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."surfing-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."surfing-ver_0_1_0".dir   = "ver_0_1_0";
  inputs."surfing-ver_0_1_0".owner = "nim-nix-pkgs";
  inputs."surfing-ver_0_1_0".ref   = "master";
  inputs."surfing-ver_0_1_0".repo  = "surfing";
  inputs."surfing-ver_0_1_0".type  = "github";
  inputs."surfing-ver_0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."surfing-ver_0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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