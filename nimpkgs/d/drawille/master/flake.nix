{
  description = ''Allows drawing in the terminal by using UTF Braille characters. Idea from https://github.com/asciimoo/drawille'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-drawille-master.flake = false;
  inputs.src-drawille-master.owner = "PMunch";
  inputs.src-drawille-master.ref   = "master";
  inputs.src-drawille-master.repo  = "drawille-nim";
  inputs.src-drawille-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-drawille-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-drawille-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}