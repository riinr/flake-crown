{
  description = ''Brainly data extractor'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-brainlyextractor-master.flake = false;
  inputs.src-brainlyextractor-master.ref   = "refs/heads/master";
  inputs.src-brainlyextractor-master.owner = "thisago";
  inputs.src-brainlyextractor-master.repo  = "brainlyextractor";
  inputs.src-brainlyextractor-master.type  = "github";
  
  inputs."scraper".owner = "nim-nix-pkgs";
  inputs."scraper".ref   = "master";
  inputs."scraper".repo  = "scraper";
  inputs."scraper".dir   = "master";
  inputs."scraper".type  = "github";
  inputs."scraper".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scraper".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gitlab.com/lurlo/useragent".owner = "nim-nix-pkgs";
  inputs."gitlab.com/lurlo/useragent".ref   = "master";
  inputs."gitlab.com/lurlo/useragent".repo  = "gitlab.com/lurlo/useragent";
  inputs."gitlab.com/lurlo/useragent".dir   = "";
  inputs."gitlab.com/lurlo/useragent".type  = "github";
  inputs."gitlab.com/lurlo/useragent".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gitlab.com/lurlo/useragent".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-brainlyextractor-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-brainlyextractor-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}