{
  description = ''A Nim library to create and manage temporary directories.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-tempdir-v1_0_0.flake = false;
  inputs.src-tempdir-v1_0_0.owner = "euantorano";
  inputs.src-tempdir-v1_0_0.ref   = "refs/tags/v1.0.0";
  inputs.src-tempdir-v1_0_0.repo  = "tempdir.nim";
  inputs.src-tempdir-v1_0_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-tempdir-v1_0_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-tempdir-v1_0_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}