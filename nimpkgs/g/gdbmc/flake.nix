{
  description = ''This library is a wrapper to C GDBM library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."gdbmc-master".dir   = "master";
  inputs."gdbmc-master".owner = "nim-nix-pkgs";
  inputs."gdbmc-master".ref   = "master";
  inputs."gdbmc-master".repo  = "gdbmc";
  inputs."gdbmc-master".type  = "github";
  inputs."gdbmc-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gdbmc-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gdbmc-v0_9_0".dir   = "v0_9_0";
  inputs."gdbmc-v0_9_0".owner = "nim-nix-pkgs";
  inputs."gdbmc-v0_9_0".ref   = "master";
  inputs."gdbmc-v0_9_0".repo  = "gdbmc";
  inputs."gdbmc-v0_9_0".type  = "github";
  inputs."gdbmc-v0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gdbmc-v0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gdbmc-v0_9_1".dir   = "v0_9_1";
  inputs."gdbmc-v0_9_1".owner = "nim-nix-pkgs";
  inputs."gdbmc-v0_9_1".ref   = "master";
  inputs."gdbmc-v0_9_1".repo  = "gdbmc";
  inputs."gdbmc-v0_9_1".type  = "github";
  inputs."gdbmc-v0_9_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gdbmc-v0_9_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gdbmc-v0_9_9".dir   = "v0_9_9";
  inputs."gdbmc-v0_9_9".owner = "nim-nix-pkgs";
  inputs."gdbmc-v0_9_9".ref   = "master";
  inputs."gdbmc-v0_9_9".repo  = "gdbmc";
  inputs."gdbmc-v0_9_9".type  = "github";
  inputs."gdbmc-v0_9_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gdbmc-v0_9_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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