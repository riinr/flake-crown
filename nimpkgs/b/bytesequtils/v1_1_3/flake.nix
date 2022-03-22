{
  description = ''Nim package to manipulate buffer as either seq[byte] or string'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-bytesequtils-v1_1_3.flake = false;
  inputs.src-bytesequtils-v1_1_3.owner = "Clonkk";
  inputs.src-bytesequtils-v1_1_3.ref   = "v1_1_3";
  inputs.src-bytesequtils-v1_1_3.repo  = "bytesequtils";
  inputs.src-bytesequtils-v1_1_3.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-bytesequtils-v1_1_3"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-bytesequtils-v1_1_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}