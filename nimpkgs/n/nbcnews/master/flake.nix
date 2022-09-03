{
  description = ''NBC News scraper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nbcnews-master.flake = false;
  inputs.src-nbcnews-master.ref   = "refs/heads/master";
  inputs.src-nbcnews-master.owner = "thisago";
  inputs.src-nbcnews-master.repo  = "nbcnews";
  inputs.src-nbcnews-master.type  = "github";
  
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
  
  inputs."cligen".owner = "nim-nix-pkgs";
  inputs."cligen".ref   = "master";
  inputs."cligen".repo  = "cligen";
  inputs."cligen".dir   = "v1_5_28";
  inputs."cligen".type  = "github";
  inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nbcnews-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-nbcnews-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}