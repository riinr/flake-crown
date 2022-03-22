{
  description = ''Karax extension to convert html in string form to embeddable Karax vdom'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-htmlToVdom-main.flake = false;
  inputs.src-htmlToVdom-main.owner = "C-NERD";
  inputs.src-htmlToVdom-main.ref   = "main";
  inputs.src-htmlToVdom-main.repo  = "htmlToVdom";
  inputs.src-htmlToVdom-main.type  = "github";
  
  inputs."karax".owner = "nim-nix-pkgs";
  inputs."karax".ref   = "master";
  inputs."karax".repo  = "karax";
  inputs."karax".dir   = "1_2_1";
  inputs."karax".type  = "github";
  inputs."karax".inputs.nixpkgs.follows = "nixpkgs";
  inputs."karax".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-htmlToVdom-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-htmlToVdom-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}