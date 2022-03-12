{
  description = ''Python-like 'struct' for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-struct-master.flake = false;
  inputs.src-struct-master.owner = "OpenSystemsLab";
  inputs.src-struct-master.ref   = "refs/heads/master";
  inputs.src-struct-master.repo  = "struct.nim";
  inputs.src-struct-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-struct-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-struct-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}