{
  description = ''SipHash, a pseudorandom function optimized for short messages.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."siphash-master".dir   = "master";
  inputs."siphash-master".owner = "nim-nix-pkgs";
  inputs."siphash-master".ref   = "master";
  inputs."siphash-master".repo  = "siphash";
  inputs."siphash-master".type  = "github";
  inputs."siphash-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."siphash-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."siphash-v0_1_0".dir   = "v0_1_0";
  inputs."siphash-v0_1_0".owner = "nim-nix-pkgs";
  inputs."siphash-v0_1_0".ref   = "master";
  inputs."siphash-v0_1_0".repo  = "siphash";
  inputs."siphash-v0_1_0".type  = "github";
  inputs."siphash-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."siphash-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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