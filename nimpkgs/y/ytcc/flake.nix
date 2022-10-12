{
  description = ''CLI tool to get Youtube video captions (with chapters)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ytcc-master".dir   = "master";
  inputs."ytcc-master".owner = "nim-nix-pkgs";
  inputs."ytcc-master".ref   = "master";
  inputs."ytcc-master".repo  = "ytcc";
  inputs."ytcc-master".type  = "github";
  inputs."ytcc-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ytcc-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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