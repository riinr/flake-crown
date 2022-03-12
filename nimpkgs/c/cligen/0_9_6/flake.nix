{
  description = ''Infer & generate command-line interace/option/argument parsers'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-cligen-0_9_6.flake = false;
  inputs.src-cligen-0_9_6.owner = "c-blake";
  inputs.src-cligen-0_9_6.ref   = "refs/tags/0.9.6";
  inputs.src-cligen-0_9_6.repo  = "cligen";
  inputs.src-cligen-0_9_6.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-cligen-0_9_6"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-cligen-0_9_6";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}