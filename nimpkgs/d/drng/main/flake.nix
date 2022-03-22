{
  description = ''Provides access to the rdrand and rdseed instructions. Based on Intel's DRNG Library (libdrng)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-drng-main.flake = false;
  inputs.src-drng-main.owner = "rockcavera";
  inputs.src-drng-main.ref   = "main";
  inputs.src-drng-main.repo  = "nim-drng";
  inputs.src-drng-main.type  = "github";
  
  inputs."cpuwhat".owner = "nim-nix-pkgs";
  inputs."cpuwhat".ref   = "master";
  inputs."cpuwhat".repo  = "cpuwhat";
  inputs."cpuwhat".dir   = "";
  inputs."cpuwhat".type  = "github";
  inputs."cpuwhat".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cpuwhat".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-drng-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-drng-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}