{
  description = ''NBC News scraper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nbcnews-master".dir   = "master";
  inputs."nbcnews-master".owner = "nim-nix-pkgs";
  inputs."nbcnews-master".ref   = "master";
  inputs."nbcnews-master".repo  = "nbcnews";
  inputs."nbcnews-master".type  = "github";
  inputs."nbcnews-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nbcnews-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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