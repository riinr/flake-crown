{
  description = ''A sugary for loop with syntax for typechecking loop variables'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."foreach-master".dir   = "master";
  inputs."foreach-master".owner = "nim-nix-pkgs";
  inputs."foreach-master".ref   = "master";
  inputs."foreach-master".repo  = "foreach";
  inputs."foreach-master".type  = "github";
  inputs."foreach-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."foreach-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."foreach-1_0_0".dir   = "1_0_0";
  inputs."foreach-1_0_0".owner = "nim-nix-pkgs";
  inputs."foreach-1_0_0".ref   = "master";
  inputs."foreach-1_0_0".repo  = "foreach";
  inputs."foreach-1_0_0".type  = "github";
  inputs."foreach-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."foreach-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."foreach-1_0_1".dir   = "1_0_1";
  inputs."foreach-1_0_1".owner = "nim-nix-pkgs";
  inputs."foreach-1_0_1".ref   = "master";
  inputs."foreach-1_0_1".repo  = "foreach";
  inputs."foreach-1_0_1".type  = "github";
  inputs."foreach-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."foreach-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."foreach-1_0_2".dir   = "1_0_2";
  inputs."foreach-1_0_2".owner = "nim-nix-pkgs";
  inputs."foreach-1_0_2".ref   = "master";
  inputs."foreach-1_0_2".repo  = "foreach";
  inputs."foreach-1_0_2".type  = "github";
  inputs."foreach-1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."foreach-1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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