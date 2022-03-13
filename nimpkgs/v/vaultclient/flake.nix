{
  description = ''Hashicorp Vault HTTP Client'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."vaultclient-master".dir   = "master";
  inputs."vaultclient-master".owner = "nim-nix-pkgs";
  inputs."vaultclient-master".ref   = "master";
  inputs."vaultclient-master".repo  = "vaultclient";
  inputs."vaultclient-master".type  = "github";
  inputs."vaultclient-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vaultclient-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."vaultclient-0_1_0".dir   = "0_1_0";
  inputs."vaultclient-0_1_0".owner = "nim-nix-pkgs";
  inputs."vaultclient-0_1_0".ref   = "master";
  inputs."vaultclient-0_1_0".repo  = "vaultclient";
  inputs."vaultclient-0_1_0".type  = "github";
  inputs."vaultclient-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vaultclient-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."vaultclient-0_1_1".dir   = "0_1_1";
  inputs."vaultclient-0_1_1".owner = "nim-nix-pkgs";
  inputs."vaultclient-0_1_1".ref   = "master";
  inputs."vaultclient-0_1_1".repo  = "vaultclient";
  inputs."vaultclient-0_1_1".type  = "github";
  inputs."vaultclient-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vaultclient-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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