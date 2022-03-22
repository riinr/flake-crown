{
  description = ''Scraping tools'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-scraper-master.flake = false;
  inputs.src-scraper-master.ref   = "refs/heads/master";
  inputs.src-scraper-master.owner = "lurlo";
  inputs.src-scraper-master.repo  = "scraper";
  inputs.src-scraper-master.type  = "gitlab";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-scraper-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-scraper-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}