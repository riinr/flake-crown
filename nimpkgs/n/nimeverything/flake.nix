{
  description = ''everything  search engine wrapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimeverything-master".dir   = "master";
  inputs."nimeverything-master".owner = "nim-nix-pkgs";
  inputs."nimeverything-master".ref   = "master";
  inputs."nimeverything-master".repo  = "nimeverything";
  inputs."nimeverything-master".type  = "github";
  inputs."nimeverything-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimeverything-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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