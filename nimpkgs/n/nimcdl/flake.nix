{
  description = ''Circuit Design language made in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimcdl-master".dir   = "master";
  inputs."nimcdl-master".owner = "nim-nix-pkgs";
  inputs."nimcdl-master".ref   = "master";
  inputs."nimcdl-master".repo  = "nimcdl";
  inputs."nimcdl-master".type  = "github";
  inputs."nimcdl-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcdl-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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