{
  description = ''The Denim UI library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-denim_ui-master.flake = false;
  inputs.src-denim_ui-master.owner = "nortero-code";
  inputs.src-denim_ui-master.ref   = "refs/heads/master";
  inputs.src-denim_ui-master.repo  = "denim-ui";
  inputs.src-denim_ui-master.type  = "github";
  
  inputs."itertools".dir   = "nimpkgs/i/itertools";
  inputs."itertools".owner = "riinr";
  inputs."itertools".ref   = "flake-pinning";
  inputs."itertools".repo  = "flake-nimble";
  inputs."itertools".type  = "github";
  inputs."itertools".inputs.nixpkgs.follows = "nixpkgs";
  inputs."itertools".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."macroutils".dir   = "nimpkgs/m/macroutils";
  inputs."macroutils".owner = "riinr";
  inputs."macroutils".ref   = "flake-pinning";
  inputs."macroutils".repo  = "flake-nimble";
  inputs."macroutils".type  = "github";
  inputs."macroutils".inputs.nixpkgs.follows = "nixpkgs";
  inputs."macroutils".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rx_nim".dir   = "nimpkgs/r/rx_nim";
  inputs."rx_nim".owner = "riinr";
  inputs."rx_nim".ref   = "flake-pinning";
  inputs."rx_nim".repo  = "flake-nimble";
  inputs."rx_nim".type  = "github";
  inputs."rx_nim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rx_nim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-denim_ui-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-denim_ui-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}