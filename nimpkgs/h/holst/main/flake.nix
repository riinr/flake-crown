{
  description = ''A parser for Jupyter notebooks.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-holst-main.flake = false;
  inputs.src-holst-main.owner = "ruivieira";
  inputs.src-holst-main.ref   = "refs/heads/main";
  inputs.src-holst-main.repo  = "nim-holst";
  inputs.src-holst-main.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-holst-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-holst-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}