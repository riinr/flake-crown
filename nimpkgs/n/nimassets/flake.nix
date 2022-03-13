{
  description = ''bundle your assets to a nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimassets-master".dir   = "master";
  inputs."nimassets-master".owner = "nim-nix-pkgs";
  inputs."nimassets-master".ref   = "master";
  inputs."nimassets-master".repo  = "nimassets";
  inputs."nimassets-master".type  = "github";
  inputs."nimassets-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimassets-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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