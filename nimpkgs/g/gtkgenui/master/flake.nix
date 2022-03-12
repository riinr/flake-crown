{
  description = ''This module provides the genui macro for the Gtk2 toolkit. Genui is a way to specify graphical interfaces in a hierarchical way to more clearly show the structure of the interface as well as simplifying the code.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-gtkgenui-master.flake = false;
  inputs.src-gtkgenui-master.owner = "PMunch";
  inputs.src-gtkgenui-master.ref   = "refs/heads/master";
  inputs.src-gtkgenui-master.repo  = "gtkgenui";
  inputs.src-gtkgenui-master.type  = "github";
  
  inputs."gtk2".dir   = "nimpkgs/g/gtk2";
  inputs."gtk2".owner = "riinr";
  inputs."gtk2".ref   = "flake-pinning";
  inputs."gtk2".repo  = "flake-nimble";
  inputs."gtk2".type  = "github";
  inputs."gtk2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gtk2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-gtkgenui-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-gtkgenui-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}