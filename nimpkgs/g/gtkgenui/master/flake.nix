{
  description = ''Genui is a DSL macro for creating graphical user interfaces. This version is for the Gtk toolkit.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-gtkgenui-master.flake = false;
  inputs.src-gtkgenui-master.ref   = "refs/heads/master";
  inputs.src-gtkgenui-master.owner = "PMunch";
  inputs.src-gtkgenui-master.repo  = "gtkgenui";
  inputs.src-gtkgenui-master.type  = "github";
  
  inputs."gtk2".owner = "nim-nix-pkgs";
  inputs."gtk2".ref   = "master";
  inputs."gtk2".repo  = "gtk2";
  inputs."gtk2".dir   = "v1_3";
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