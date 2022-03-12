{
  description = ''High level GObject-Introspection based GTK3 bindings'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-gintro-v0_4_18.flake = false;
  inputs.src-gintro-v0_4_18.owner = "stefansalewski";
  inputs.src-gintro-v0_4_18.ref   = "refs/tags/v0.4.18";
  inputs.src-gintro-v0_4_18.repo  = "gintro";
  inputs.src-gintro-v0_4_18.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-gintro-v0_4_18"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-gintro-v0_4_18";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}