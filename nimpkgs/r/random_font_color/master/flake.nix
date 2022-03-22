{
  description = ''Random curated Fonts and pastel Colors for your UI/UX design, design for non-designers.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-random_font_color-master.flake = false;
  inputs.src-random_font_color-master.ref   = "refs/heads/master";
  inputs.src-random_font_color-master.owner = "juancarlospaco";
  inputs.src-random_font_color-master.repo  = "nim-random-font-color";
  inputs.src-random_font_color-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-random_font_color-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-random_font_color-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}