{
  description = ''Bindings for Closure Compiler web API.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-closure_compiler-v0_3_3.flake = false;
  inputs.src-closure_compiler-v0_3_3.owner = "yglukhov";
  inputs.src-closure_compiler-v0_3_3.ref   = "refs/tags/v0.3.3";
  inputs.src-closure_compiler-v0_3_3.repo  = "closure_compiler";
  inputs.src-closure_compiler-v0_3_3.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-closure_compiler-v0_3_3"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-closure_compiler-v0_3_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}