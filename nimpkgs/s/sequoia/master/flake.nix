{
  description = ''Sequoia PGP wrapper for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-sequoia-master.flake = false;
  inputs.src-sequoia-master.owner = "ba0f3";
  inputs.src-sequoia-master.ref   = "refs/heads/master";
  inputs.src-sequoia-master.repo  = "sequoia.nim";
  inputs.src-sequoia-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-sequoia-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-sequoia-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}