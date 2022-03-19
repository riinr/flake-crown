{
  description = ''Syndicated actors for conversational concurrency'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."syndicate-1_0_0".dir   = "1_0_0";
  inputs."syndicate-1_0_0".owner = "nim-nix-pkgs";
  inputs."syndicate-1_0_0".ref   = "master";
  inputs."syndicate-1_0_0".repo  = "syndicate";
  inputs."syndicate-1_0_0".type  = "github";
  inputs."syndicate-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."syndicate-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."syndicate-1_1_0".dir   = "1_1_0";
  inputs."syndicate-1_1_0".owner = "nim-nix-pkgs";
  inputs."syndicate-1_1_0".ref   = "master";
  inputs."syndicate-1_1_0".repo  = "syndicate";
  inputs."syndicate-1_1_0".type  = "github";
  inputs."syndicate-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."syndicate-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."syndicate-nim-syndicate-1_2_0".dir   = "nim-syndicate-1_2_0";
  inputs."syndicate-nim-syndicate-1_2_0".owner = "nim-nix-pkgs";
  inputs."syndicate-nim-syndicate-1_2_0".ref   = "master";
  inputs."syndicate-nim-syndicate-1_2_0".repo  = "syndicate";
  inputs."syndicate-nim-syndicate-1_2_0".type  = "github";
  inputs."syndicate-nim-syndicate-1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."syndicate-nim-syndicate-1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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