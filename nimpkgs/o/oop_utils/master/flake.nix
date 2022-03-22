{
  description = ''Macro for building OOP class hierarchies based on closure methods.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-oop_utils-master.flake = false;
  inputs.src-oop_utils-master.owner = "bluenote10";
  inputs.src-oop_utils-master.ref   = "master";
  inputs.src-oop_utils-master.repo  = "oop_utils";
  inputs.src-oop_utils-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-oop_utils-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-oop_utils-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}