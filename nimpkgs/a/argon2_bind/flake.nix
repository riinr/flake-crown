{
  description = ''Bindings to the high-level Argon2 C API'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."argon2_bind-develop".dir   = "develop";
  inputs."argon2_bind-develop".owner = "nim-nix-pkgs";
  inputs."argon2_bind-develop".ref   = "master";
  inputs."argon2_bind-develop".repo  = "argon2_bind";
  inputs."argon2_bind-develop".type  = "github";
  inputs."argon2_bind-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argon2_bind-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."argon2_bind-master".dir   = "master";
  inputs."argon2_bind-master".owner = "nim-nix-pkgs";
  inputs."argon2_bind-master".ref   = "master";
  inputs."argon2_bind-master".repo  = "argon2_bind";
  inputs."argon2_bind-master".type  = "github";
  inputs."argon2_bind-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argon2_bind-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."argon2_bind-v0_1_0".dir   = "v0_1_0";
  inputs."argon2_bind-v0_1_0".owner = "nim-nix-pkgs";
  inputs."argon2_bind-v0_1_0".ref   = "master";
  inputs."argon2_bind-v0_1_0".repo  = "argon2_bind";
  inputs."argon2_bind-v0_1_0".type  = "github";
  inputs."argon2_bind-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argon2_bind-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."argon2_bind-v0_1_1".dir   = "v0_1_1";
  inputs."argon2_bind-v0_1_1".owner = "nim-nix-pkgs";
  inputs."argon2_bind-v0_1_1".ref   = "master";
  inputs."argon2_bind-v0_1_1".repo  = "argon2_bind";
  inputs."argon2_bind-v0_1_1".type  = "github";
  inputs."argon2_bind-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argon2_bind-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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