{
  description = ''HTML & CSS Minify Lib & App based on Regexes & parallel MultiReplaces'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."css_html_minify-master".url = "path:./master";
  inputs."css_html_minify-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."css_html_minify-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."css_html_minify-0_1_5".url = "path:./0_1_5";
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