{
  description = ''Firejail wrapper for Nim, Isolate your Production App before its too late!'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."firejail-master".dir   = "master";
  inputs."firejail-master".owner = "nim-nix-pkgs";
  inputs."firejail-master".ref   = "master";
  inputs."firejail-master".repo  = "firejail";
  inputs."firejail-master".type  = "github";
  inputs."firejail-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."firejail-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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