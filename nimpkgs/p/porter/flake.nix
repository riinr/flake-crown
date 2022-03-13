{
  description = ''Simple extensible implementation of Porter stemmer algorithm'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."porter-master".dir   = "master";
  inputs."porter-master".owner = "nim-nix-pkgs";
  inputs."porter-master".ref   = "master";
  inputs."porter-master".repo  = "porter";
  inputs."porter-master".type  = "github";
  inputs."porter-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."porter-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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