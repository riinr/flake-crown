{
  description = ''Cairo backend for the denim ui engine'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-denim_ui_cairo-master.flake = false;
  inputs.src-denim_ui_cairo-master.owner = "nortero-code";
  inputs.src-denim_ui_cairo-master.ref   = "refs/heads/master";
  inputs.src-denim_ui_cairo-master.repo  = "midio-ui-cairo";
  inputs.src-denim_ui_cairo-master.type  = "github";
  
  inputs."denim_ui".dir   = "nimpkgs/d/denim_ui";
  inputs."denim_ui".owner = "riinr";
  inputs."denim_ui".ref   = "flake-pinning";
  inputs."denim_ui".repo  = "flake-nimble";
  inputs."denim_ui".type  = "github";
  inputs."denim_ui".inputs.nixpkgs.follows = "nixpkgs";
  inputs."denim_ui".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sdl2".dir   = "nimpkgs/s/sdl2";
  inputs."sdl2".owner = "riinr";
  inputs."sdl2".ref   = "flake-pinning";
  inputs."sdl2".repo  = "flake-nimble";
  inputs."sdl2".type  = "github";
  inputs."sdl2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sdl2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cairo".dir   = "nimpkgs/c/cairo";
  inputs."cairo".owner = "riinr";
  inputs."cairo".ref   = "flake-pinning";
  inputs."cairo".repo  = "flake-nimble";
  inputs."cairo".type  = "github";
  inputs."cairo".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cairo".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-denim_ui_cairo-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-denim_ui_cairo-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}