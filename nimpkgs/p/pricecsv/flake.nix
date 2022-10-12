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
  
  inputs."pricecsv-0_7_0".dir   = "0_7_0";
  inputs."pricecsv-0_7_0".owner = "nim-nix-pkgs";
  inputs."pricecsv-0_7_0".ref   = "master";
  inputs."pricecsv-0_7_0".repo  = "pricecsv";
  inputs."pricecsv-0_7_0".type  = "github";
  inputs."pricecsv-0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pricecsv-0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pricecsv-0_7_1".dir   = "0_7_1";
  inputs."pricecsv-0_7_1".owner = "nim-nix-pkgs";
  inputs."pricecsv-0_7_1".ref   = "master";
  inputs."pricecsv-0_7_1".repo  = "pricecsv";
  inputs."pricecsv-0_7_1".type  = "github";
  inputs."pricecsv-0_7_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pricecsv-0_7_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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