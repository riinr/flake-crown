{
  description = ''Automatically extracts the data of sites'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-parsepage-master.flake = false;
  inputs.src-parsepage-master.ref   = "refs/heads/master";
  inputs.src-parsepage-master.owner = "thisago";
  inputs.src-parsepage-master.repo  = "parsepage";
  inputs.src-parsepage-master.type  = "github";
  
  inputs."github.com/thisago/fsafename".owner = "nim-nix-pkgs";
  inputs."github.com/thisago/fsafename".ref   = "master";
  inputs."github.com/thisago/fsafename".repo  = "github.com/thisago/fsafename";
  inputs."github.com/thisago/fsafename".dir   = "";
  inputs."github.com/thisago/fsafename".type  = "github";
  inputs."github.com/thisago/fsafename".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github.com/thisago/fsafename".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gitlab.com/lurlo/useragent".owner = "nim-nix-pkgs";
  inputs."gitlab.com/lurlo/useragent".ref   = "master";
  inputs."gitlab.com/lurlo/useragent".repo  = "gitlab.com/lurlo/useragent";
  inputs."gitlab.com/lurlo/useragent".dir   = "";
  inputs."gitlab.com/lurlo/useragent".type  = "github";
  inputs."gitlab.com/lurlo/useragent".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gitlab.com/lurlo/useragent".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scraper".owner = "nim-nix-pkgs";
  inputs."scraper".ref   = "master";
  inputs."scraper".repo  = "scraper";
  inputs."scraper".dir   = "master";
  inputs."scraper".type  = "github";
  inputs."scraper".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scraper".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen".owner = "nim-nix-pkgs";
  inputs."cligen".ref   = "master";
  inputs."cligen".repo  = "cligen";
  inputs."cligen".dir   = "v1_5_26";
  inputs."cligen".type  = "github";
  inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."karax".owner = "nim-nix-pkgs";
  inputs."karax".ref   = "master";
  inputs."karax".repo  = "karax";
  inputs."karax".dir   = "1_2_2";
  inputs."karax".type  = "github";
  inputs."karax".inputs.nixpkgs.follows = "nixpkgs";
  inputs."karax".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimquery".owner = "nim-nix-pkgs";
  inputs."nimquery".ref   = "master";
  inputs."nimquery".repo  = "nimquery";
  inputs."nimquery".dir   = "v2_0_0";
  inputs."nimquery".type  = "github";
  inputs."nimquery".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimquery".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."yaml".owner = "nim-nix-pkgs";
  inputs."yaml".ref   = "master";
  inputs."yaml".repo  = "yaml";
  inputs."yaml".dir   = "v1_0_0";
  inputs."yaml".type  = "github";
  inputs."yaml".inputs.nixpkgs.follows = "nixpkgs";
  inputs."yaml".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."css_html_minify".owner = "nim-nix-pkgs";
  inputs."css_html_minify".ref   = "master";
  inputs."css_html_minify".repo  = "css_html_minify";
  inputs."css_html_minify".dir   = "0_1_5";
  inputs."css_html_minify".type  = "github";
  inputs."css_html_minify".inputs.nixpkgs.follows = "nixpkgs";
  inputs."css_html_minify".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-parsepage-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-parsepage-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}