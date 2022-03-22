{
  description = ''noise is a Nim implementation of linenoise'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-noise-master.flake = false;
  inputs.src-noise-master.ref   = "refs/heads/master";
  inputs.src-noise-master.owner = "jangko";
  inputs.src-noise-master.repo  = "nim-noise";
  inputs.src-noise-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-noise-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-noise-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}