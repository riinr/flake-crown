{
  description = ''Transform XML trees into performant JavaScript DOM calls at compile-time.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-xom-v0_1-alpha.flake = false;
  inputs.src-xom-v0_1-alpha.owner = "schneiderfelipe";
  inputs.src-xom-v0_1-alpha.ref   = "refs/tags/v0.1-alpha";
  inputs.src-xom-v0_1-alpha.repo  = "xom";
  inputs.src-xom-v0_1-alpha.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-xom-v0_1-alpha"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-xom-v0_1-alpha";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}