{
  description = ''HTML & CSS Minify Lib & App based on Regexes & parallel MultiReplaces'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-css_html_minify-0_1_5.flake = false;
  inputs.src-css_html_minify-0_1_5.ref   = "refs/tags/0.1.5";
  inputs.src-css_html_minify-0_1_5.owner = "juancarlospaco";
  inputs.src-css_html_minify-0_1_5.repo  = "nim-css-html-minify";
  inputs.src-css_html_minify-0_1_5.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-css_html_minify-0_1_5"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-css_html_minify-0_1_5";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}