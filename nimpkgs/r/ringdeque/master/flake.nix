{
  description = ''deque implementatoin using DoublyLinkedRing'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ringDeque-master.flake = false;
  inputs.src-ringDeque-master.ref   = "refs/heads/master";
  inputs.src-ringDeque-master.owner = "technicallyagd";
  inputs.src-ringDeque-master.repo  = "ringDeque";
  inputs.src-ringDeque-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ringDeque-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-ringDeque-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}