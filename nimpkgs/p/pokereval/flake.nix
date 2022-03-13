{
  description = ''A poker hand evaluator'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."pokereval-master".dir   = "master";
  inputs."pokereval-master".owner = "nim-nix-pkgs";
  inputs."pokereval-master".ref   = "master";
  inputs."pokereval-master".repo  = "pokereval";
  inputs."pokereval-master".type  = "github";
  inputs."pokereval-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pokereval-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pokereval-v0_1_0".dir   = "v0_1_0";
  inputs."pokereval-v0_1_0".owner = "nim-nix-pkgs";
  inputs."pokereval-v0_1_0".ref   = "master";
  inputs."pokereval-v0_1_0".repo  = "pokereval";
  inputs."pokereval-v0_1_0".type  = "github";
  inputs."pokereval-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pokereval-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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