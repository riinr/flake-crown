{
  description = ''Compiler package providing the compiler sources as a library.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-compiler-v0_9_4.flake = false;
  inputs.src-compiler-v0_9_4.owner = "nim-lang";
  inputs.src-compiler-v0_9_4.ref   = "refs/tags/v0.9.4";
  inputs.src-compiler-v0_9_4.repo  = "Nim";
  inputs.src-compiler-v0_9_4.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-compiler-v0_9_4"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-compiler-v0_9_4";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}