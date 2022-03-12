{
  description = ''Infer & generate command-line interace/option/argument parsers'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-cligen-v1_5_12.flake = false;
  inputs.src-cligen-v1_5_12.owner = "c-blake";
  inputs.src-cligen-v1_5_12.ref   = "refs/tags/v1.5.12";
  inputs.src-cligen-v1_5_12.repo  = "cligen";
  inputs.src-cligen-v1_5_12.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-cligen-v1_5_12"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-cligen-v1_5_12";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}