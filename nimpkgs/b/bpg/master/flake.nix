{
  description = ''BPG (Better Portable Graphics) for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-bpg-master.flake = false;
  inputs.src-bpg-master.owner = "def-";
  inputs.src-bpg-master.ref   = "refs/heads/master";
  inputs.src-bpg-master.repo  = "nim-bpg";
  inputs.src-bpg-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-bpg-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-bpg-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}