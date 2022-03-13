{
  description = ''Random password and passphrase generator'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."randpw-master".dir   = "master";
  inputs."randpw-master".owner = "nim-nix-pkgs";
  inputs."randpw-master".ref   = "master";
  inputs."randpw-master".repo  = "randpw";
  inputs."randpw-master".type  = "github";
  inputs."randpw-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."randpw-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."randpw-v1_0_0".dir   = "v1_0_0";
  inputs."randpw-v1_0_0".owner = "nim-nix-pkgs";
  inputs."randpw-v1_0_0".ref   = "master";
  inputs."randpw-v1_0_0".repo  = "randpw";
  inputs."randpw-v1_0_0".type  = "github";
  inputs."randpw-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."randpw-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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