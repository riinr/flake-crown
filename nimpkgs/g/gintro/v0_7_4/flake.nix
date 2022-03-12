{
  description = ''High level GObject-Introspection based GTK3 bindings'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-gintro-v0_7_4.flake = false;
  inputs.src-gintro-v0_7_4.owner = "stefansalewski";
  inputs.src-gintro-v0_7_4.ref   = "refs/tags/v0.7.4";
  inputs.src-gintro-v0_7_4.repo  = "gintro";
  inputs.src-gintro-v0_7_4.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-gintro-v0_7_4"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-gintro-v0_7_4";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}