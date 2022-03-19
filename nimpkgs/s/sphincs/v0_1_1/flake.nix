{
  description = ''SPHINCS⁺ stateless hash-based signature scheme'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-sphincs-v0_1_1.flake = false;
  inputs.src-sphincs-v0_1_1.owner = "~ehmry";
  inputs.src-sphincs-v0_1_1.ref   = "v0.1.1";
  inputs.src-sphincs-v0_1_1.repo  = "nim_sphincs";
  inputs.src-sphincs-v0_1_1.type  = "sourcehut";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-sphincs-v0_1_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-sphincs-v0_1_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}