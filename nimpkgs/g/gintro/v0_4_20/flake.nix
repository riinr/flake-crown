{
  description = ''High level GObject-Introspection based GTK3 bindings'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-gintro-v0_4_20.flake = false;
  inputs.src-gintro-v0_4_20.ref   = "refs/tags/v0.4.20";
  inputs.src-gintro-v0_4_20.owner = "stefansalewski";
  inputs.src-gintro-v0_4_20.repo  = "gintro";
  inputs.src-gintro-v0_4_20.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-gintro-v0_4_20"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-gintro-v0_4_20";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}