{
  description = ''apache arrow and parquet c api bindings'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimarrow_glib-master.flake = false;
  inputs.src-nimarrow_glib-master.owner = "emef";
  inputs.src-nimarrow_glib-master.ref   = "refs/heads/master";
  inputs.src-nimarrow_glib-master.repo  = "nimarrow_glib";
  inputs.src-nimarrow_glib-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimarrow_glib-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimarrow_glib-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}