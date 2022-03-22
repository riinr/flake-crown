{
  description = ''itch.io API Client for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-itchio-master.flake = false;
  inputs.src-itchio-master.ref   = "refs/heads/master";
  inputs.src-itchio-master.owner = "juancarlospaco";
  inputs.src-itchio-master.repo  = "nim-itchio";
  inputs.src-itchio-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-itchio-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-itchio-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}