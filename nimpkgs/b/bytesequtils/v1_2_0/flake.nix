{
  description = ''Nim package to manipulate buffer as either seq[byte] or string'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-bytesequtils-v1_2_0.flake = false;
  inputs.src-bytesequtils-v1_2_0.owner = "Clonkk";
  inputs.src-bytesequtils-v1_2_0.ref   = "v1_2_0";
  inputs.src-bytesequtils-v1_2_0.repo  = "bytesequtils";
  inputs.src-bytesequtils-v1_2_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-bytesequtils-v1_2_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-bytesequtils-v1_2_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}