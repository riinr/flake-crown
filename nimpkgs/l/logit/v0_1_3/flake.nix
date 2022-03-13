{
  description = ''Dependency-free, cross-platform and small logging library for Nim, with a simple and comfortable API'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-logit-v0_1_3.flake = false;
  inputs.src-logit-v0_1_3.owner = "Miqueas";
  inputs.src-logit-v0_1_3.ref   = "refs/tags/v0.1.3";
  inputs.src-logit-v0_1_3.repo  = "Logit";
  inputs.src-logit-v0_1_3.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-logit-v0_1_3"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-logit-v0_1_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}