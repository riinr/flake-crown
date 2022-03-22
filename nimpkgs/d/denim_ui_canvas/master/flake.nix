{
  description = ''HTML Canvas backend for the denim ui engine'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-denim_ui_canvas-master.flake = false;
  inputs.src-denim_ui_canvas-master.owner = "nortero-code";
  inputs.src-denim_ui_canvas-master.ref   = "master";
  inputs.src-denim_ui_canvas-master.repo  = "denim-ui-canvas";
  inputs.src-denim_ui_canvas-master.type  = "github";
  
  inputs."denim_ui".owner = "nim-nix-pkgs";
  inputs."denim_ui".ref   = "master";
  inputs."denim_ui".repo  = "denim_ui";
  inputs."denim_ui".dir   = "";
  inputs."denim_ui".type  = "github";
  inputs."denim_ui".inputs.nixpkgs.follows = "nixpkgs";
  inputs."denim_ui".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-denim_ui_canvas-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-denim_ui_canvas-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}