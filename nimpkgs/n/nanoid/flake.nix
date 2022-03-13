{
  description = ''The Nim implementation of NanoID'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nanoid-master".dir   = "master";
  inputs."nanoid-master".owner = "nim-nix-pkgs";
  inputs."nanoid-master".ref   = "master";
  inputs."nanoid-master".repo  = "nanoid";
  inputs."nanoid-master".type  = "github";
  inputs."nanoid-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nanoid-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nanoid-v0_1_0".dir   = "v0_1_0";
  inputs."nanoid-v0_1_0".owner = "nim-nix-pkgs";
  inputs."nanoid-v0_1_0".ref   = "master";
  inputs."nanoid-v0_1_0".repo  = "nanoid";
  inputs."nanoid-v0_1_0".type  = "github";
  inputs."nanoid-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nanoid-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nanoid-v0_2_0".dir   = "v0_2_0";
  inputs."nanoid-v0_2_0".owner = "nim-nix-pkgs";
  inputs."nanoid-v0_2_0".ref   = "master";
  inputs."nanoid-v0_2_0".repo  = "nanoid";
  inputs."nanoid-v0_2_0".type  = "github";
  inputs."nanoid-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nanoid-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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