{
  description = ''Text generator, based on Markov Chains (Markov text generator)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimkov-master.flake = false;
  inputs.src-nimkov-master.owner = "bit0r1n";
  inputs.src-nimkov-master.ref   = "master";
  inputs.src-nimkov-master.repo  = "nimkov";
  inputs.src-nimkov-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimkov-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimkov-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}