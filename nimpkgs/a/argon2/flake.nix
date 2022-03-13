{
  description = ''A nim wrapper for the Argon2 hashing library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."argon2-master".dir   = "master";
  inputs."argon2-master".owner = "nim-nix-pkgs";
  inputs."argon2-master".ref   = "master";
  inputs."argon2-master".repo  = "argon2";
  inputs."argon2-master".type  = "github";
  inputs."argon2-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argon2-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."argon2-v1_0_0".dir   = "v1_0_0";
  inputs."argon2-v1_0_0".owner = "nim-nix-pkgs";
  inputs."argon2-v1_0_0".ref   = "master";
  inputs."argon2-v1_0_0".repo  = "argon2";
  inputs."argon2-v1_0_0".type  = "github";
  inputs."argon2-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argon2-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."argon2-v1_0_1".dir   = "v1_0_1";
  inputs."argon2-v1_0_1".owner = "nim-nix-pkgs";
  inputs."argon2-v1_0_1".ref   = "master";
  inputs."argon2-v1_0_1".repo  = "argon2";
  inputs."argon2-v1_0_1".type  = "github";
  inputs."argon2-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argon2-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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