{
  description = ''Decision tree and Random forest CART implementation in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."decisiontree-master".dir   = "master";
  inputs."decisiontree-master".owner = "nim-nix-pkgs";
  inputs."decisiontree-master".ref   = "master";
  inputs."decisiontree-master".repo  = "decisiontree";
  inputs."decisiontree-master".type  = "github";
  inputs."decisiontree-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."decisiontree-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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