{
  description = ''a collection of useful macro functionalities & enums'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-macroplus-0_1_22.flake = false;
  inputs.src-macroplus-0_1_22.owner = "hamidb80";
  inputs.src-macroplus-0_1_22.ref   = "0_1_22";
  inputs.src-macroplus-0_1_22.repo  = "macroplus";
  inputs.src-macroplus-0_1_22.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-macroplus-0_1_22"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-macroplus-0_1_22";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}