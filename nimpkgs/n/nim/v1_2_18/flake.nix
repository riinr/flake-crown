{
  description = ''Compiler package providing the compiler sources as a library.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-compiler-v1_2_18.flake = false;
  inputs.src-compiler-v1_2_18.ref   = "refs/tags/v1.2.18";
  inputs.src-compiler-v1_2_18.owner = "nim-lang";
  inputs.src-compiler-v1_2_18.repo  = "Nim";
  inputs.src-compiler-v1_2_18.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-compiler-v1_2_18"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-compiler-v1_2_18";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}