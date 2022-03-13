{
  description = ''Hex clock made in SDL and Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."hexclock-master".dir   = "master";
  inputs."hexclock-master".owner = "nim-nix-pkgs";
  inputs."hexclock-master".ref   = "master";
  inputs."hexclock-master".repo  = "hexclock";
  inputs."hexclock-master".type  = "github";
  inputs."hexclock-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hexclock-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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