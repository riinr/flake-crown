{
  description = ''Random curated Fonts and pastel Colors for your UI/UX design, design for non-designers.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."random_font_color-master".dir   = "master";
  inputs."random_font_color-master".owner = "nim-nix-pkgs";
  inputs."random_font_color-master".ref   = "master";
  inputs."random_font_color-master".repo  = "random_font_color";
  inputs."random_font_color-master".type  = "github";
  inputs."random_font_color-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."random_font_color-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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