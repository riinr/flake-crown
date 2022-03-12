{
  description = ''Bindings to the high-level Argon2 C API'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."argon2_bind-develop".url = "path:./develop";
  inputs."argon2_bind-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argon2_bind-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."argon2_bind-master".url = "path:./master";
  inputs."argon2_bind-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argon2_bind-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."argon2_bind-v0_1_0".url = "path:./v0_1_0";
  inputs."argon2_bind-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argon2_bind-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."argon2_bind-v0_1_1".url = "path:./v0_1_1";
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