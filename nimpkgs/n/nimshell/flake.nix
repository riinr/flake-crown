{
  description = ''Library for shell scripting in nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimshell-master".dir   = "master";
  inputs."nimshell-master".owner = "nim-nix-pkgs";
  inputs."nimshell-master".ref   = "master";
  inputs."nimshell-master".repo  = "nimshell";
  inputs."nimshell-master".type  = "github";
  inputs."nimshell-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimshell-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimshell-v0_0_1".dir   = "v0_0_1";
  inputs."nimshell-v0_0_1".owner = "nim-nix-pkgs";
  inputs."nimshell-v0_0_1".ref   = "master";
  inputs."nimshell-v0_0_1".repo  = "nimshell";
  inputs."nimshell-v0_0_1".type  = "github";
  inputs."nimshell-v0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimshell-v0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimshell-v0_0_2".dir   = "v0_0_2";
  inputs."nimshell-v0_0_2".owner = "nim-nix-pkgs";
  inputs."nimshell-v0_0_2".ref   = "master";
  inputs."nimshell-v0_0_2".repo  = "nimshell";
  inputs."nimshell-v0_0_2".type  = "github";
  inputs."nimshell-v0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimshell-v0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimshell-v0_0_3".dir   = "v0_0_3";
  inputs."nimshell-v0_0_3".owner = "nim-nix-pkgs";
  inputs."nimshell-v0_0_3".ref   = "master";
  inputs."nimshell-v0_0_3".repo  = "nimshell";
  inputs."nimshell-v0_0_3".type  = "github";
  inputs."nimshell-v0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimshell-v0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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