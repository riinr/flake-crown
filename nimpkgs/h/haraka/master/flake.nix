{
  description = ''Haraka v2 short-input hash function'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-haraka-master.flake = false;
  inputs.src-haraka-master.ref   = "master";
  inputs.src-haraka-master.owner = "~ehmry";
  inputs.src-haraka-master.repo  = "nim_haraka";
  inputs.src-haraka-master.type  = "sourcehut";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-haraka-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-haraka-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}