{
  description = ''Dependency-free, cross-platform and small logging library for Lua and Nim, with a simple and comfortable API'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-logit-main.flake = false;
  inputs.src-logit-main.ref   = "refs/heads/main";
  inputs.src-logit-main.owner = "Miqueas";
  inputs.src-logit-main.repo  = "Logit";
  inputs.src-logit-main.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-logit-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-logit-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}