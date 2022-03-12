{
  description = ''An Atom, RSS, and JSONfeed parser'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-feednim-master.flake = false;
  inputs.src-feednim-master.owner = "johnconway";
  inputs.src-feednim-master.ref   = "refs/heads/master";
  inputs.src-feednim-master.repo  = "feed-nim";
  inputs.src-feednim-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-feednim-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-feednim-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}