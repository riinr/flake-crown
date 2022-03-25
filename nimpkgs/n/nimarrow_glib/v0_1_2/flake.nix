{
  description = ''apache arrow and parquet c api bindings'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimarrow_glib-v0_1_2.flake = false;
  inputs.src-nimarrow_glib-v0_1_2.ref   = "refs/tags/v0.1.2";
  inputs.src-nimarrow_glib-v0_1_2.owner = "emef";
  inputs.src-nimarrow_glib-v0_1_2.repo  = "nimarrow_glib";
  inputs.src-nimarrow_glib-v0_1_2.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimarrow_glib-v0_1_2"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-nimarrow_glib-v0_1_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}