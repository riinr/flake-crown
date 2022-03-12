{
  description = ''Nim implementation of linenoise command line editor'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-noise-v0_1_14.flake = false;
  inputs.src-noise-v0_1_14.owner = "jangko";
  inputs.src-noise-v0_1_14.ref   = "refs/tags/v0.1.14";
  inputs.src-noise-v0_1_14.repo  = "nim-noise";
  inputs.src-noise-v0_1_14.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-noise-v0_1_14"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-noise-v0_1_14";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}