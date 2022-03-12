{
  description = ''A nim wrapper for the Argon2 hashing library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."argon2-master".url = "path:./master";
  inputs."argon2-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argon2-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."argon2-v1_0_0".url = "path:./v1_0_0";
  inputs."argon2-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argon2-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."argon2-v1_0_1".url = "path:./v1_0_1";
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