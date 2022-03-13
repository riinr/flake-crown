{
  description = ''Negamax AI search-tree algorithm for two player games'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."negamax-master".dir   = "master";
  inputs."negamax-master".owner = "nim-nix-pkgs";
  inputs."negamax-master".ref   = "master";
  inputs."negamax-master".repo  = "negamax";
  inputs."negamax-master".type  = "github";
  inputs."negamax-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."negamax-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."negamax-v0_0_1".dir   = "v0_0_1";
  inputs."negamax-v0_0_1".owner = "nim-nix-pkgs";
  inputs."negamax-v0_0_1".ref   = "master";
  inputs."negamax-v0_0_1".repo  = "negamax";
  inputs."negamax-v0_0_1".type  = "github";
  inputs."negamax-v0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."negamax-v0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."negamax-v0_0_2".dir   = "v0_0_2";
  inputs."negamax-v0_0_2".owner = "nim-nix-pkgs";
  inputs."negamax-v0_0_2".ref   = "master";
  inputs."negamax-v0_0_2".repo  = "negamax";
  inputs."negamax-v0_0_2".type  = "github";
  inputs."negamax-v0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."negamax-v0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."negamax-v0_0_3".dir   = "v0_0_3";
  inputs."negamax-v0_0_3".owner = "nim-nix-pkgs";
  inputs."negamax-v0_0_3".ref   = "master";
  inputs."negamax-v0_0_3".repo  = "negamax";
  inputs."negamax-v0_0_3".type  = "github";
  inputs."negamax-v0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."negamax-v0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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