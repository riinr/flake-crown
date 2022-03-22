{
  description = ''Tencil is a mustache-compatible JSON based template engine for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-tencil-main.flake = false;
  inputs.src-tencil-main.ref   = "refs/heads/main";
  inputs.src-tencil-main.owner = "enimatek-nl";
  inputs.src-tencil-main.repo  = "tencil";
  inputs.src-tencil-main.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-tencil-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-tencil-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}