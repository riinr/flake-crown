{
  description = ''Library for splitting a string into shell words'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."shlex-master".dir   = "master";
  inputs."shlex-master".owner = "nim-nix-pkgs";
  inputs."shlex-master".ref   = "master";
  inputs."shlex-master".repo  = "shlex";
  inputs."shlex-master".type  = "github";
  inputs."shlex-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shlex-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."shlex-v0_1_0".dir   = "v0_1_0";
  inputs."shlex-v0_1_0".owner = "nim-nix-pkgs";
  inputs."shlex-v0_1_0".ref   = "master";
  inputs."shlex-v0_1_0".repo  = "shlex";
  inputs."shlex-v0_1_0".type  = "github";
  inputs."shlex-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shlex-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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