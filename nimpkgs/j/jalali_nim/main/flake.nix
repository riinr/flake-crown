{
  description = ''Jalali <=> Gregorian date converter, originally a copy of http://jdf.scr.ir/'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-jalali_nim-main.flake = false;
  inputs.src-jalali_nim-main.owner = "hamidb80";
  inputs.src-jalali_nim-main.ref   = "main";
  inputs.src-jalali_nim-main.repo  = "jalili-nim";
  inputs.src-jalali_nim-main.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-jalali_nim-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-jalali_nim-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}