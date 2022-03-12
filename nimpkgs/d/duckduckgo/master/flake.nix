{
  description = ''Duckduckgo search'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-duckduckgo-master.flake = false;
  inputs.src-duckduckgo-master.owner = "lurlo";
  inputs.src-duckduckgo-master.ref   = "refs/heads/master";
  inputs.src-duckduckgo-master.repo  = "duckduckgo";
  inputs.src-duckduckgo-master.type  = "gitlab";
  
  inputs."scraper".owner = "nim-nix-pkgs";
  inputs."scraper".ref   = "master";
  inputs."scraper".repo  = "scraper";
  inputs."scraper".type  = "github";
  inputs."scraper".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scraper".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."https://gitlab.com/lurlo/useragent".owner = "nim-nix-pkgs";
  inputs."https://gitlab.com/lurlo/useragent".ref   = "master";
  inputs."https://gitlab.com/lurlo/useragent".repo  = "https://gitlab.com/lurlo/useragent";
  inputs."https://gitlab.com/lurlo/useragent".type  = "github";
  inputs."https://gitlab.com/lurlo/useragent".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://gitlab.com/lurlo/useragent".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-duckduckgo-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-duckduckgo-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}