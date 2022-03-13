{
  description = ''Jalili <=> Gregorian date converter, originally a copy of http://jdf.scr.ir/'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."jalali_nim-main".dir   = "main";
  inputs."jalali_nim-main".owner = "nim-nix-pkgs";
  inputs."jalali_nim-main".ref   = "master";
  inputs."jalali_nim-main".repo  = "jalali_nim";
  inputs."jalali_nim-main".type  = "github";
  inputs."jalali_nim-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jalali_nim-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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