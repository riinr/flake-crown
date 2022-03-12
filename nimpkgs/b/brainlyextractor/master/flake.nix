{
  description = ''Brainly data extractor'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-brainlyextractor-master.flake = false;
  inputs.src-brainlyextractor-master.owner = "lurlo";
  inputs.src-brainlyextractor-master.ref   = "refs/heads/master";
  inputs.src-brainlyextractor-master.repo  = "brainlyextractor";
  inputs.src-brainlyextractor-master.type  = "gitlab";
  
  inputs."scraper".dir   = "nimpkgs/s/scraper";
  inputs."scraper".owner = "riinr";
  inputs."scraper".ref   = "flake-pinning";
  inputs."scraper".repo  = "flake-nimble";
  inputs."scraper".type  = "github";
  inputs."scraper".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scraper".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."https://gitlab.com/lurlo/useragent".dir   = "nimpkgs/h/https://gitlab.com/lurlo/useragent";
  inputs."https://gitlab.com/lurlo/useragent".owner = "riinr";
  inputs."https://gitlab.com/lurlo/useragent".ref   = "flake-pinning";
  inputs."https://gitlab.com/lurlo/useragent".repo  = "flake-nimble";
  inputs."https://gitlab.com/lurlo/useragent".type  = "github";
  inputs."https://gitlab.com/lurlo/useragent".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://gitlab.com/lurlo/useragent".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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