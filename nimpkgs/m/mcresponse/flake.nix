{
  description = ''mConnect Standardised Response Package'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."mcresponse-master".dir   = "master";
  inputs."mcresponse-master".owner = "nim-nix-pkgs";
  inputs."mcresponse-master".ref   = "master";
  inputs."mcresponse-master".repo  = "mcresponse";
  inputs."mcresponse-master".type  = "github";
  inputs."mcresponse-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mcresponse-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mcresponse-v0_1_1".dir   = "v0_1_1";
  inputs."mcresponse-v0_1_1".owner = "nim-nix-pkgs";
  inputs."mcresponse-v0_1_1".ref   = "master";
  inputs."mcresponse-v0_1_1".repo  = "mcresponse";
  inputs."mcresponse-v0_1_1".type  = "github";
  inputs."mcresponse-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mcresponse-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mcresponse-v0_2_0".dir   = "v0_2_0";
  inputs."mcresponse-v0_2_0".owner = "nim-nix-pkgs";
  inputs."mcresponse-v0_2_0".ref   = "master";
  inputs."mcresponse-v0_2_0".repo  = "mcresponse";
  inputs."mcresponse-v0_2_0".type  = "github";
  inputs."mcresponse-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mcresponse-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mcresponse-v0_3_0".dir   = "v0_3_0";
  inputs."mcresponse-v0_3_0".owner = "nim-nix-pkgs";
  inputs."mcresponse-v0_3_0".ref   = "master";
  inputs."mcresponse-v0_3_0".repo  = "mcresponse";
  inputs."mcresponse-v0_3_0".type  = "github";
  inputs."mcresponse-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mcresponse-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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