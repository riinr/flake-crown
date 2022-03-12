{
  description = ''Color Library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-Palette-develop.flake = false;
  inputs.src-Palette-develop.owner = "momeemt";
  inputs.src-Palette-develop.ref   = "refs/heads/develop";
  inputs.src-Palette-develop.repo  = "Palette";
  inputs.src-Palette-develop.type  = "github";
  
  inputs."nigui".dir   = "nimpkgs/n/nigui";
  inputs."nigui".owner = "riinr";
  inputs."nigui".ref   = "flake-pinning";
  inputs."nigui".repo  = "flake-nimble";
  inputs."nigui".type  = "github";
  inputs."nigui".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nigui".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen".dir   = "nimpkgs/c/cligen";
  inputs."cligen".owner = "riinr";
  inputs."cligen".ref   = "flake-pinning";
  inputs."cligen".repo  = "flake-nimble";
  inputs."cligen".type  = "github";
  inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-Palette-develop"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-Palette-develop";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}