{
  description = ''Dependency-free, cross-platform and small logging library for Lua and Nim, with a simple and comfortable API'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-logit-v0_1_1.flake = false;
  inputs.src-logit-v0_1_1.ref   = "refs/tags/v0.1.1";
  inputs.src-logit-v0_1_1.owner = "Miqueas";
  inputs.src-logit-v0_1_1.repo  = "Logit";
  inputs.src-logit-v0_1_1.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-logit-v0_1_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-logit-v0_1_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}