{
  description = ''JSON Web Tokens for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."quickjwt-master".dir   = "master";
  inputs."quickjwt-master".owner = "nim-nix-pkgs";
  inputs."quickjwt-master".ref   = "master";
  inputs."quickjwt-master".repo  = "quickjwt";
  inputs."quickjwt-master".type  = "github";
  inputs."quickjwt-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."quickjwt-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."quickjwt-0_0_1".dir   = "0_0_1";
  inputs."quickjwt-0_0_1".owner = "nim-nix-pkgs";
  inputs."quickjwt-0_0_1".ref   = "master";
  inputs."quickjwt-0_0_1".repo  = "quickjwt";
  inputs."quickjwt-0_0_1".type  = "github";
  inputs."quickjwt-0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."quickjwt-0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."quickjwt-0_2_1".dir   = "0_2_1";
  inputs."quickjwt-0_2_1".owner = "nim-nix-pkgs";
  inputs."quickjwt-0_2_1".ref   = "master";
  inputs."quickjwt-0_2_1".repo  = "quickjwt";
  inputs."quickjwt-0_2_1".type  = "github";
  inputs."quickjwt-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."quickjwt-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."quickjwt-v0_2_1".dir   = "v0_2_1";
  inputs."quickjwt-v0_2_1".owner = "nim-nix-pkgs";
  inputs."quickjwt-v0_2_1".ref   = "master";
  inputs."quickjwt-v0_2_1".repo  = "quickjwt";
  inputs."quickjwt-v0_2_1".type  = "github";
  inputs."quickjwt-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."quickjwt-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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