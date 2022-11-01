{
  description = ''ptrace wrapper for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ptrace-master".dir   = "master";
  inputs."ptrace-master".owner = "nim-nix-pkgs";
  inputs."ptrace-master".ref   = "master";
  inputs."ptrace-master".repo  = "ptrace";
  inputs."ptrace-master".type  = "github";
  inputs."ptrace-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ptrace-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ptrace-0_0_2".dir   = "0_0_2";
  inputs."ptrace-0_0_2".owner = "nim-nix-pkgs";
  inputs."ptrace-0_0_2".ref   = "master";
  inputs."ptrace-0_0_2".repo  = "ptrace";
  inputs."ptrace-0_0_2".type  = "github";
  inputs."ptrace-0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ptrace-0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ptrace-0_0_3".dir   = "0_0_3";
  inputs."ptrace-0_0_3".owner = "nim-nix-pkgs";
  inputs."ptrace-0_0_3".ref   = "master";
  inputs."ptrace-0_0_3".repo  = "ptrace";
  inputs."ptrace-0_0_3".type  = "github";
  inputs."ptrace-0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ptrace-0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ptrace-0_0_4".dir   = "0_0_4";
  inputs."ptrace-0_0_4".owner = "nim-nix-pkgs";
  inputs."ptrace-0_0_4".ref   = "master";
  inputs."ptrace-0_0_4".repo  = "ptrace";
  inputs."ptrace-0_0_4".type  = "github";
  inputs."ptrace-0_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ptrace-0_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ptrace-0_0_5".dir   = "0_0_5";
  inputs."ptrace-0_0_5".owner = "nim-nix-pkgs";
  inputs."ptrace-0_0_5".ref   = "master";
  inputs."ptrace-0_0_5".repo  = "ptrace";
  inputs."ptrace-0_0_5".type  = "github";
  inputs."ptrace-0_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ptrace-0_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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