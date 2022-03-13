{
  description = ''Pure nim fuzzy search implementation. Supports substrings etc'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."fuzzy-master".dir   = "master";
  inputs."fuzzy-master".owner = "nim-nix-pkgs";
  inputs."fuzzy-master".ref   = "master";
  inputs."fuzzy-master".repo  = "fuzzy";
  inputs."fuzzy-master".type  = "github";
  inputs."fuzzy-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fuzzy-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fuzzy-v0_1_0".dir   = "v0_1_0";
  inputs."fuzzy-v0_1_0".owner = "nim-nix-pkgs";
  inputs."fuzzy-v0_1_0".ref   = "master";
  inputs."fuzzy-v0_1_0".repo  = "fuzzy";
  inputs."fuzzy-v0_1_0".type  = "github";
  inputs."fuzzy-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fuzzy-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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