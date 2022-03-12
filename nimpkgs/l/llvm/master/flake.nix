{
  description = ''LLVM bindings for the Nim language.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-llvm-master.flake = false;
  inputs.src-llvm-master.owner = "FedeOmoto";
  inputs.src-llvm-master.ref   = "refs/heads/master";
  inputs.src-llvm-master.repo  = "llvm";
  inputs.src-llvm-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-LLVM-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-LLVM-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}