{
  description = ''Bluesoft Cosmos extractor'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."bluesoftcosmos-master".dir   = "master";
  inputs."bluesoftcosmos-master".owner = "nim-nix-pkgs";
  inputs."bluesoftcosmos-master".ref   = "master";
  inputs."bluesoftcosmos-master".repo  = "bluesoftcosmos";
  inputs."bluesoftcosmos-master".type  = "github";
  inputs."bluesoftcosmos-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bluesoftcosmos-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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