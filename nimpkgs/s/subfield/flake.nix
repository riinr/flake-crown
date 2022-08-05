{
  description = ''Override the dot operator to access nested subfields of a Nim object.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."subfield-master".dir   = "master";
  inputs."subfield-master".owner = "nim-nix-pkgs";
  inputs."subfield-master".ref   = "master";
  inputs."subfield-master".repo  = "subfield";
  inputs."subfield-master".type  = "github";
  inputs."subfield-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."subfield-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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