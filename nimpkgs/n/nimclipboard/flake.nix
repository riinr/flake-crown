{
  description = ''Nim wrapper for libclipboard'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimclipboard-master".dir   = "master";
  inputs."nimclipboard-master".owner = "nim-nix-pkgs";
  inputs."nimclipboard-master".ref   = "master";
  inputs."nimclipboard-master".repo  = "nimclipboard";
  inputs."nimclipboard-master".type  = "github";
  inputs."nimclipboard-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimclipboard-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimclipboard-v0_1_0".dir   = "v0_1_0";
  inputs."nimclipboard-v0_1_0".owner = "nim-nix-pkgs";
  inputs."nimclipboard-v0_1_0".ref   = "master";
  inputs."nimclipboard-v0_1_0".repo  = "nimclipboard";
  inputs."nimclipboard-v0_1_0".type  = "github";
  inputs."nimclipboard-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimclipboard-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimclipboard-v0_1_1".dir   = "v0_1_1";
  inputs."nimclipboard-v0_1_1".owner = "nim-nix-pkgs";
  inputs."nimclipboard-v0_1_1".ref   = "master";
  inputs."nimclipboard-v0_1_1".repo  = "nimclipboard";
  inputs."nimclipboard-v0_1_1".type  = "github";
  inputs."nimclipboard-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimclipboard-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimclipboard-v0_1_2".dir   = "v0_1_2";
  inputs."nimclipboard-v0_1_2".owner = "nim-nix-pkgs";
  inputs."nimclipboard-v0_1_2".ref   = "master";
  inputs."nimclipboard-v0_1_2".repo  = "nimclipboard";
  inputs."nimclipboard-v0_1_2".type  = "github";
  inputs."nimclipboard-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimclipboard-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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