{
  description = ''A URL shortener cli app. using bit.ly'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."urlshortener-master".dir   = "master";
  inputs."urlshortener-master".owner = "nim-nix-pkgs";
  inputs."urlshortener-master".ref   = "master";
  inputs."urlshortener-master".repo  = "urlshortener";
  inputs."urlshortener-master".type  = "github";
  inputs."urlshortener-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."urlshortener-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."urlshortener-v0_1_0".dir   = "v0_1_0";
  inputs."urlshortener-v0_1_0".owner = "nim-nix-pkgs";
  inputs."urlshortener-v0_1_0".ref   = "master";
  inputs."urlshortener-v0_1_0".repo  = "urlshortener";
  inputs."urlshortener-v0_1_0".type  = "github";
  inputs."urlshortener-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."urlshortener-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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