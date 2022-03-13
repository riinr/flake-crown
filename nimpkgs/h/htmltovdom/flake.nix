{
  description = ''Karax extension to convert html in string form to embeddable Karax vdom'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."htmltovdom-main".dir   = "main";
  inputs."htmltovdom-main".owner = "nim-nix-pkgs";
  inputs."htmltovdom-main".ref   = "master";
  inputs."htmltovdom-main".repo  = "htmltovdom";
  inputs."htmltovdom-main".type  = "github";
  inputs."htmltovdom-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."htmltovdom-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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