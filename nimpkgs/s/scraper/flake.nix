{
  description = ''Scraping tools'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."scraper-master".dir   = "master";
  inputs."scraper-master".owner = "nim-nix-pkgs";
  inputs."scraper-master".ref   = "master";
  inputs."scraper-master".repo  = "scraper";
  inputs."scraper-master".type  = "github";
  inputs."scraper-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scraper-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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