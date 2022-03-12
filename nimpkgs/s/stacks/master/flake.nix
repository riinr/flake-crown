{
  description = ''Pure Nim stack implementation based on sequences.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-stacks-master.flake = false;
  inputs.src-stacks-master.owner = "rustomax";
  inputs.src-stacks-master.ref   = "refs/heads/master";
  inputs.src-stacks-master.repo  = "nim-stacks";
  inputs.src-stacks-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-stacks-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-stacks-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}