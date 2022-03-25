{
  description = ''Nim implementation of NanoID, a tiny, secure, URL-friendly, unique string ID generator. Works with Linux and Windows!'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."neoid-master".dir   = "master";
  inputs."neoid-master".owner = "nim-nix-pkgs";
  inputs."neoid-master".ref   = "master";
  inputs."neoid-master".repo  = "neoid";
  inputs."neoid-master".type  = "github";
  inputs."neoid-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neoid-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neoid-0_3_0".dir   = "0_3_0";
  inputs."neoid-0_3_0".owner = "nim-nix-pkgs";
  inputs."neoid-0_3_0".ref   = "master";
  inputs."neoid-0_3_0".repo  = "neoid";
  inputs."neoid-0_3_0".type  = "github";
  inputs."neoid-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neoid-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neoid-0_3_1".dir   = "0_3_1";
  inputs."neoid-0_3_1".owner = "nim-nix-pkgs";
  inputs."neoid-0_3_1".ref   = "master";
  inputs."neoid-0_3_1".repo  = "neoid";
  inputs."neoid-0_3_1".type  = "github";
  inputs."neoid-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neoid-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neoid-0_3_2".dir   = "0_3_2";
  inputs."neoid-0_3_2".owner = "nim-nix-pkgs";
  inputs."neoid-0_3_2".ref   = "master";
  inputs."neoid-0_3_2".repo  = "neoid";
  inputs."neoid-0_3_2".type  = "github";
  inputs."neoid-0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neoid-0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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