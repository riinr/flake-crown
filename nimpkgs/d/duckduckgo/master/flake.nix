{
  description = ''Duckduckgo search'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-duckduckgo-master.flake = false;
  inputs.src-duckduckgo-master.ref   = "refs/heads/master";
  inputs.src-duckduckgo-master.owner = "lurlo";
  inputs.src-duckduckgo-master.repo  = "duckduckgo";
  inputs.src-duckduckgo-master.type  = "gitlab";
  
  inputs."scraper".owner = "nim-nix-pkgs";
  inputs."scraper".ref   = "master";
  inputs."scraper".repo  = "scraper";
  inputs."scraper".dir   = "master";
  inputs."scraper".type  = "github";
  inputs."scraper".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scraper".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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