{
  description = ''Pari/GP C library wrapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-pari-master.flake = false;
  inputs.src-pari-master.owner = "lompik";
  inputs.src-pari-master.ref   = "refs/heads/master";
  inputs.src-pari-master.repo  = "pari.nim";
  inputs.src-pari-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-pari-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-pari-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}