{
  description = ''A high-level Nim Argon2 password hashing library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."argon2_highlevel-master".dir   = "master";
  inputs."argon2_highlevel-master".owner = "nim-nix-pkgs";
  inputs."argon2_highlevel-master".ref   = "master";
  inputs."argon2_highlevel-master".repo  = "argon2_highlevel";
  inputs."argon2_highlevel-master".type  = "github";
  inputs."argon2_highlevel-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argon2_highlevel-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."argon2_highlevel-1_0_0".dir   = "1_0_0";
  inputs."argon2_highlevel-1_0_0".owner = "nim-nix-pkgs";
  inputs."argon2_highlevel-1_0_0".ref   = "master";
  inputs."argon2_highlevel-1_0_0".repo  = "argon2_highlevel";
  inputs."argon2_highlevel-1_0_0".type  = "github";
  inputs."argon2_highlevel-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argon2_highlevel-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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