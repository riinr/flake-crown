{
  description = ''Type-safe commandline parsing with minimal magic'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."therapist-master".dir   = "master";
  inputs."therapist-master".owner = "nim-nix-pkgs";
  inputs."therapist-master".ref   = "master";
  inputs."therapist-master".repo  = "therapist";
  inputs."therapist-master".type  = "github";
  inputs."therapist-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."therapist-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."therapist-v0_1_0".dir   = "v0_1_0";
  inputs."therapist-v0_1_0".owner = "nim-nix-pkgs";
  inputs."therapist-v0_1_0".ref   = "master";
  inputs."therapist-v0_1_0".repo  = "therapist";
  inputs."therapist-v0_1_0".type  = "github";
  inputs."therapist-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."therapist-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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