{
  description = ''Duckduckgo search'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-duckduckgo-master.flake = false;
  inputs.src-duckduckgo-master.ref   = "refs/heads/master";
  inputs.src-duckduckgo-master.owner = "thisago";
  inputs.src-duckduckgo-master.repo  = "duckduckgo";
  inputs.src-duckduckgo-master.type  = "github";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-duckduckgo-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-duckduckgo-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}