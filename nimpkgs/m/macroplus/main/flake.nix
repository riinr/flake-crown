{
  description = ''a collection of useful macro functionalities & enums'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-macroplus-main.flake = false;
  inputs.src-macroplus-main.ref   = "refs/heads/main";
  inputs.src-macroplus-main.owner = "hamidb80";
  inputs.src-macroplus-main.repo  = "macroplus";
  inputs.src-macroplus-main.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-macroplus-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-macroplus-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}