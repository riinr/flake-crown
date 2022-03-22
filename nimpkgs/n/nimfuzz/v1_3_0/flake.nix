{
  description = ''Simple and compact Nim fuzzing library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimfuzz-v1_3_0.flake = false;
  inputs.src-nimfuzz-v1_3_0.owner = "apense";
  inputs.src-nimfuzz-v1_3_0.ref   = "v1_3_0";
  inputs.src-nimfuzz-v1_3_0.repo  = "nimfuzz";
  inputs.src-nimfuzz-v1_3_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimfuzz-v1_3_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimfuzz-v1_3_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}