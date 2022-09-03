{
  description = ''Bluesoft Cosmos extractor'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-bluesoftcosmos-master.flake = false;
  inputs.src-bluesoftcosmos-master.ref   = "refs/heads/master";
  inputs.src-bluesoftcosmos-master.owner = "thisago";
  inputs.src-bluesoftcosmos-master.repo  = "bluesoftcosmos";
  inputs.src-bluesoftcosmos-master.type  = "github";
  
  inputs."scraper".owner = "nim-nix-pkgs";
  inputs."scraper".ref   = "master";
  inputs."scraper".repo  = "scraper";
  inputs."scraper".dir   = "source";
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-bluesoftcosmos-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-bluesoftcosmos-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}