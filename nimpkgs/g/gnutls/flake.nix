{
  description = ''GnuTLS wrapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."gnutls-master".dir   = "master";
  inputs."gnutls-master".owner = "nim-nix-pkgs";
  inputs."gnutls-master".ref   = "master";
  inputs."gnutls-master".repo  = "gnutls";
  inputs."gnutls-master".type  = "github";
  inputs."gnutls-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gnutls-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gnutls-0_1_0".dir   = "0_1_0";
  inputs."gnutls-0_1_0".owner = "nim-nix-pkgs";
  inputs."gnutls-0_1_0".ref   = "master";
  inputs."gnutls-0_1_0".repo  = "gnutls";
  inputs."gnutls-0_1_0".type  = "github";
  inputs."gnutls-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gnutls-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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