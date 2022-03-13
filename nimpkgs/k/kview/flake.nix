{
  description = ''For karax html preview.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."kview-master".dir   = "master";
  inputs."kview-master".owner = "nim-nix-pkgs";
  inputs."kview-master".ref   = "master";
  inputs."kview-master".repo  = "kview";
  inputs."kview-master".type  = "github";
  inputs."kview-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."kview-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."kview-v0_1_0".dir   = "v0_1_0";
  inputs."kview-v0_1_0".owner = "nim-nix-pkgs";
  inputs."kview-v0_1_0".ref   = "master";
  inputs."kview-v0_1_0".repo  = "kview";
  inputs."kview-v0_1_0".type  = "github";
  inputs."kview-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."kview-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."kview-v0_1_2".dir   = "v0_1_2";
  inputs."kview-v0_1_2".owner = "nim-nix-pkgs";
  inputs."kview-v0_1_2".ref   = "master";
  inputs."kview-v0_1_2".repo  = "kview";
  inputs."kview-v0_1_2".type  = "github";
  inputs."kview-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."kview-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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