{
  description = ''Youtube data extractor'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ytextractor-master".dir   = "master";
  inputs."ytextractor-master".owner = "nim-nix-pkgs";
  inputs."ytextractor-master".ref   = "master";
  inputs."ytextractor-master".repo  = "ytextractor";
  inputs."ytextractor-master".type  = "github";
  inputs."ytextractor-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ytextractor-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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