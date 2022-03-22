{
  description = ''Compiler package providing the compiler sources as a library.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-compiler-v1_6_0.flake = false;
  inputs.src-compiler-v1_6_0.ref   = "refs/tags/v1.6.0";
  inputs.src-compiler-v1_6_0.owner = "nim-lang";
  inputs.src-compiler-v1_6_0.repo  = "Nim";
  inputs.src-compiler-v1_6_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-compiler-v1_6_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-compiler-v1_6_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}