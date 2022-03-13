{
  description = ''Library for external memory manipulation on a windows process'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimem-master".dir   = "master";
  inputs."nimem-master".owner = "nim-nix-pkgs";
  inputs."nimem-master".ref   = "master";
  inputs."nimem-master".repo  = "nimem";
  inputs."nimem-master".type  = "github";
  inputs."nimem-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimem-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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