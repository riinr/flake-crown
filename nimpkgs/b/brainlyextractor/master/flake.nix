{
  description = ''Brainly data extractor'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-brainlyextractor-master.flake = false;
  inputs.src-brainlyextractor-master.owner = "lurlo";
  inputs.src-brainlyextractor-master.ref   = "master";
  inputs.src-brainlyextractor-master.repo  = "brainlyextractor";
  inputs.src-brainlyextractor-master.type  = "gitlab";
  
  inputs."scraper".owner = "nim-nix-pkgs";
  inputs."scraper".ref   = "master";
  inputs."scraper".repo  = "scraper";
  inputs."scraper".dir   = "";
  inputs."scraper".type  = "github";
  inputs."scraper".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scraper".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-brainlyextractor-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-brainlyextractor-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}