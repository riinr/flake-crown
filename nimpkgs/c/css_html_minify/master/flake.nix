{
  description = ''HTML & CSS Minify Lib & App based on Regexes & parallel MultiReplaces'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-css_html_minify-master.flake = false;
  inputs.src-css_html_minify-master.owner = "juancarlospaco";
  inputs.src-css_html_minify-master.ref   = "refs/heads/master";
  inputs.src-css_html_minify-master.repo  = "nim-css-html-minify";
  inputs.src-css_html_minify-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-css_html_minify-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-css_html_minify-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}