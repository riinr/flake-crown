{
  description = ''gsl C Api wrapped for nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-gsl-main.flake = false;
  inputs.src-gsl-main.owner = "YesDrX";
  inputs.src-gsl-main.ref   = "refs/heads/main";
  inputs.src-gsl-main.repo  = "gsl-nim";
  inputs.src-gsl-main.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-gsl-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-gsl-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}