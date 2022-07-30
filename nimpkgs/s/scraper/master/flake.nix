{
  description = ''Scraping tools'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-scraper-master.flake = false;
  inputs.src-scraper-master.ref   = "refs/heads/master";
  inputs.src-scraper-master.owner = "thisago";
  inputs.src-scraper-master.repo  = "scraper";
  inputs.src-scraper-master.type  = "github";
  
  inputs."github-thisago-findxml".owner = "nim-nix-pkgs";
  inputs."github-thisago-findxml".ref   = "master";
  inputs."github-thisago-findxml".repo  = "github-thisago-findxml";
  inputs."github-thisago-findxml".dir   = "master";
  inputs."github-thisago-findxml".type  = "github";
  inputs."github-thisago-findxml".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-thisago-findxml".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-scraper-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-scraper-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}