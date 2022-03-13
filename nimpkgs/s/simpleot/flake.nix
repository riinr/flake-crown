{
  description = ''Simple OT wrapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."simpleot-master".dir   = "master";
  inputs."simpleot-master".owner = "nim-nix-pkgs";
  inputs."simpleot-master".ref   = "master";
  inputs."simpleot-master".repo  = "simpleot";
  inputs."simpleot-master".type  = "github";
  inputs."simpleot-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."simpleot-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."simpleot-0_4_1".dir   = "0_4_1";
  inputs."simpleot-0_4_1".owner = "nim-nix-pkgs";
  inputs."simpleot-0_4_1".ref   = "master";
  inputs."simpleot-0_4_1".repo  = "simpleot";
  inputs."simpleot-0_4_1".type  = "github";
  inputs."simpleot-0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."simpleot-0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."simpleot-v0_4_2".dir   = "v0_4_2";
  inputs."simpleot-v0_4_2".owner = "nim-nix-pkgs";
  inputs."simpleot-v0_4_2".ref   = "master";
  inputs."simpleot-v0_4_2".repo  = "simpleot";
  inputs."simpleot-v0_4_2".type  = "github";
  inputs."simpleot-v0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."simpleot-v0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."simpleot-v0_5_0".dir   = "v0_5_0";
  inputs."simpleot-v0_5_0".owner = "nim-nix-pkgs";
  inputs."simpleot-v0_5_0".ref   = "master";
  inputs."simpleot-v0_5_0".repo  = "simpleot";
  inputs."simpleot-v0_5_0".type  = "github";
  inputs."simpleot-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."simpleot-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."simpleot-v0_5_1".dir   = "v0_5_1";
  inputs."simpleot-v0_5_1".owner = "nim-nix-pkgs";
  inputs."simpleot-v0_5_1".ref   = "master";
  inputs."simpleot-v0_5_1".repo  = "simpleot";
  inputs."simpleot-v0_5_1".type  = "github";
  inputs."simpleot-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."simpleot-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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