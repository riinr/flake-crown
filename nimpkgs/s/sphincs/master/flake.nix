{
  description = ''SPHINCS⁺ stateless hash-based signature scheme'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-sphincs-master.flake = false;
  inputs.src-sphincs-master.owner = "~ehmry";
  inputs.src-sphincs-master.ref   = "refs/heads/master";
  inputs.src-sphincs-master.repo  = "nim_sphincs";
  inputs.src-sphincs-master.type  = "other";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-sphincs-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-sphincs-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}