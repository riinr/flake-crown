{
  description = ''Low level bindings for GTK3 related libraries'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-oldgtk3-master.flake = false;
  inputs.src-oldgtk3-master.ref   = "refs/heads/master";
  inputs.src-oldgtk3-master.owner = "stefansalewski";
  inputs.src-oldgtk3-master.repo  = "oldgtk3";
  inputs.src-oldgtk3-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-oldgtk3-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-oldgtk3-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}