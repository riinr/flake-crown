{
  description = ''Simple multidimensional vector math'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-vectors-master.flake = false;
  inputs.src-vectors-master.ref   = "refs/heads/master";
  inputs.src-vectors-master.owner = "blamestross";
  inputs.src-vectors-master.repo  = "nimrod-vectors";
  inputs.src-vectors-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-vectors-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-vectors-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}