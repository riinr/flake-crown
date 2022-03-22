{
  description = ''make-like for Nim. Describe your builds as tasks!'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nake-v1_8.flake = false;
  inputs.src-nake-v1_8.ref   = "refs/tags/v1.8";
  inputs.src-nake-v1_8.owner = "fowlmouth";
  inputs.src-nake-v1_8.repo  = "nake";
  inputs.src-nake-v1_8.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nake-v1_8"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nake-v1_8";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}