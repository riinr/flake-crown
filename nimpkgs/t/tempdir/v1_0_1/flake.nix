{
  description = ''A Nim library to create and manage temporary directories.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-tempdir-v1_0_1.flake = false;
  inputs.src-tempdir-v1_0_1.owner = "euantorano";
  inputs.src-tempdir-v1_0_1.ref   = "refs/tags/v1.0.1";
  inputs.src-tempdir-v1_0_1.repo  = "tempdir.nim";
  inputs.src-tempdir-v1_0_1.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-tempdir-v1_0_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-tempdir-v1_0_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}