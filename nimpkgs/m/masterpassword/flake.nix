{
  description = ''Master Password algorith implementation'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."masterpassword-master".dir   = "master";
  inputs."masterpassword-master".owner = "nim-nix-pkgs";
  inputs."masterpassword-master".ref   = "master";
  inputs."masterpassword-master".repo  = "masterpassword";
  inputs."masterpassword-master".type  = "github";
  inputs."masterpassword-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."masterpassword-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."masterpassword-v0_1_0".dir   = "v0_1_0";
  inputs."masterpassword-v0_1_0".owner = "nim-nix-pkgs";
  inputs."masterpassword-v0_1_0".ref   = "master";
  inputs."masterpassword-v0_1_0".repo  = "masterpassword";
  inputs."masterpassword-v0_1_0".type  = "github";
  inputs."masterpassword-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."masterpassword-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."masterpassword-v0_2_0".dir   = "v0_2_0";
  inputs."masterpassword-v0_2_0".owner = "nim-nix-pkgs";
  inputs."masterpassword-v0_2_0".ref   = "master";
  inputs."masterpassword-v0_2_0".repo  = "masterpassword";
  inputs."masterpassword-v0_2_0".type  = "github";
  inputs."masterpassword-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."masterpassword-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."masterpassword-v0_2_1".dir   = "v0_2_1";
  inputs."masterpassword-v0_2_1".owner = "nim-nix-pkgs";
  inputs."masterpassword-v0_2_1".ref   = "master";
  inputs."masterpassword-v0_2_1".repo  = "masterpassword";
  inputs."masterpassword-v0_2_1".type  = "github";
  inputs."masterpassword-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."masterpassword-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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