{
  description = ''LAPACK bindings'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimlapack-master".dir   = "master";
  inputs."nimlapack-master".owner = "nim-nix-pkgs";
  inputs."nimlapack-master".ref   = "master";
  inputs."nimlapack-master".repo  = "nimlapack";
  inputs."nimlapack-master".type  = "github";
  inputs."nimlapack-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimlapack-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimlapack-0_1_1".dir   = "0_1_1";
  inputs."nimlapack-0_1_1".owner = "nim-nix-pkgs";
  inputs."nimlapack-0_1_1".ref   = "master";
  inputs."nimlapack-0_1_1".repo  = "nimlapack";
  inputs."nimlapack-0_1_1".type  = "github";
  inputs."nimlapack-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimlapack-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimlapack-0_2_0".dir   = "0_2_0";
  inputs."nimlapack-0_2_0".owner = "nim-nix-pkgs";
  inputs."nimlapack-0_2_0".ref   = "master";
  inputs."nimlapack-0_2_0".repo  = "nimlapack";
  inputs."nimlapack-0_2_0".type  = "github";
  inputs."nimlapack-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimlapack-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimlapack-0_2_1".dir   = "0_2_1";
  inputs."nimlapack-0_2_1".owner = "nim-nix-pkgs";
  inputs."nimlapack-0_2_1".ref   = "master";
  inputs."nimlapack-0_2_1".repo  = "nimlapack";
  inputs."nimlapack-0_2_1".type  = "github";
  inputs."nimlapack-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimlapack-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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