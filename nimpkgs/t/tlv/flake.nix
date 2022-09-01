{
  description = ''Simplified TLV parsing for nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."tlv-main".dir   = "main";
  inputs."tlv-main".owner = "nim-nix-pkgs";
  inputs."tlv-main".ref   = "master";
  inputs."tlv-main".repo  = "tlv";
  inputs."tlv-main".type  = "github";
  inputs."tlv-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tlv-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."tlv-v1_0_0".dir   = "v1_0_0";
  inputs."tlv-v1_0_0".owner = "nim-nix-pkgs";
  inputs."tlv-v1_0_0".ref   = "master";
  inputs."tlv-v1_0_0".repo  = "tlv";
  inputs."tlv-v1_0_0".type  = "github";
  inputs."tlv-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tlv-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."tlv-v1_0_1".dir   = "v1_0_1";
  inputs."tlv-v1_0_1".owner = "nim-nix-pkgs";
  inputs."tlv-v1_0_1".ref   = "master";
  inputs."tlv-v1_0_1".repo  = "tlv";
  inputs."tlv-v1_0_1".type  = "github";
  inputs."tlv-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tlv-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."tlv-v1_1_0".dir   = "v1_1_0";
  inputs."tlv-v1_1_0".owner = "nim-nix-pkgs";
  inputs."tlv-v1_1_0".ref   = "master";
  inputs."tlv-v1_1_0".repo  = "tlv";
  inputs."tlv-v1_1_0".type  = "github";
  inputs."tlv-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tlv-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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