{
  description = ''Create HyperText with Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-hyperscript-v0_1-alpha.flake = false;
  inputs.src-hyperscript-v0_1-alpha.owner = "schneiderfelipe";
  inputs.src-hyperscript-v0_1-alpha.ref   = "refs/tags/v0.1-alpha";
  inputs.src-hyperscript-v0_1-alpha.repo  = "hyperscript";
  inputs.src-hyperscript-v0_1-alpha.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-hyperscript-v0_1-alpha"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-hyperscript-v0_1-alpha";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}