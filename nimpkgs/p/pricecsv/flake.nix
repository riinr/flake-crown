{
  description = ''Easily calculate the total of all products in csv'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."pricecsv-master".dir   = "master";
  inputs."pricecsv-master".owner = "nim-nix-pkgs";
  inputs."pricecsv-master".ref   = "master";
  inputs."pricecsv-master".repo  = "pricecsv";
  inputs."pricecsv-master".type  = "github";
  inputs."pricecsv-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pricecsv-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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