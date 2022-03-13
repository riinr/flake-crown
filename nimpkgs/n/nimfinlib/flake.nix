{
  description = ''Financial Library for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimfinlib-master".dir   = "master";
  inputs."nimfinlib-master".owner = "nim-nix-pkgs";
  inputs."nimfinlib-master".ref   = "master";
  inputs."nimfinlib-master".repo  = "nimfinlib";
  inputs."nimfinlib-master".type  = "github";
  inputs."nimfinlib-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfinlib-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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