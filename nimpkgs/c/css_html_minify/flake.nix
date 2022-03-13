{
  description = ''HTML & CSS Minify Lib & App based on Regexes & parallel MultiReplaces'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."css_html_minify-master".dir   = "master";
  inputs."css_html_minify-master".owner = "nim-nix-pkgs";
  inputs."css_html_minify-master".ref   = "master";
  inputs."css_html_minify-master".repo  = "css_html_minify";
  inputs."css_html_minify-master".type  = "github";
  inputs."css_html_minify-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."css_html_minify-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."css_html_minify-0_1_5".dir   = "0_1_5";
  inputs."css_html_minify-0_1_5".owner = "nim-nix-pkgs";
  inputs."css_html_minify-0_1_5".ref   = "master";
  inputs."css_html_minify-0_1_5".repo  = "css_html_minify";
  inputs."css_html_minify-0_1_5".type  = "github";
  inputs."css_html_minify-0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."css_html_minify-0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"];
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}