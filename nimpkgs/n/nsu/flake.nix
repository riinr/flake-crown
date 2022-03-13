{
  description = ''Simple screenshot library & cli tool made in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nsu-master".dir   = "master";
  inputs."nsu-master".owner = "nim-nix-pkgs";
  inputs."nsu-master".ref   = "master";
  inputs."nsu-master".repo  = "nsu";
  inputs."nsu-master".type  = "github";
  inputs."nsu-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nsu-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nsu-v0_1_4".dir   = "v0_1_4";
  inputs."nsu-v0_1_4".owner = "nim-nix-pkgs";
  inputs."nsu-v0_1_4".ref   = "master";
  inputs."nsu-v0_1_4".repo  = "nsu";
  inputs."nsu-v0_1_4".type  = "github";
  inputs."nsu-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nsu-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nsu-v0_1_5".dir   = "v0_1_5";
  inputs."nsu-v0_1_5".owner = "nim-nix-pkgs";
  inputs."nsu-v0_1_5".ref   = "master";
  inputs."nsu-v0_1_5".repo  = "nsu";
  inputs."nsu-v0_1_5".type  = "github";
  inputs."nsu-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nsu-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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