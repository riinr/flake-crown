{
  description = ''IMAP client library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."imap-master".dir   = "master";
  inputs."imap-master".owner = "nim-nix-pkgs";
  inputs."imap-master".ref   = "master";
  inputs."imap-master".repo  = "imap";
  inputs."imap-master".type  = "github";
  inputs."imap-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imap-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."imap-v0_1_0".dir   = "v0_1_0";
  inputs."imap-v0_1_0".owner = "nim-nix-pkgs";
  inputs."imap-v0_1_0".ref   = "master";
  inputs."imap-v0_1_0".repo  = "imap";
  inputs."imap-v0_1_0".type  = "github";
  inputs."imap-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imap-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."imap-v0_2_0".dir   = "v0_2_0";
  inputs."imap-v0_2_0".owner = "nim-nix-pkgs";
  inputs."imap-v0_2_0".ref   = "master";
  inputs."imap-v0_2_0".repo  = "imap";
  inputs."imap-v0_2_0".type  = "github";
  inputs."imap-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imap-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."imap-v0_2_1".dir   = "v0_2_1";
  inputs."imap-v0_2_1".owner = "nim-nix-pkgs";
  inputs."imap-v0_2_1".ref   = "master";
  inputs."imap-v0_2_1".repo  = "imap";
  inputs."imap-v0_2_1".type  = "github";
  inputs."imap-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imap-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."imap-v0_2_2".dir   = "v0_2_2";
  inputs."imap-v0_2_2".owner = "nim-nix-pkgs";
  inputs."imap-v0_2_2".ref   = "master";
  inputs."imap-v0_2_2".repo  = "imap";
  inputs."imap-v0_2_2".type  = "github";
  inputs."imap-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imap-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."imap-v0_3_0".dir   = "v0_3_0";
  inputs."imap-v0_3_0".owner = "nim-nix-pkgs";
  inputs."imap-v0_3_0".ref   = "master";
  inputs."imap-v0_3_0".repo  = "imap";
  inputs."imap-v0_3_0".type  = "github";
  inputs."imap-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imap-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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