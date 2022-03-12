{
  description = ''a simple test framework for nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimsuite-develop.flake = false;
  inputs.src-nimsuite-develop.owner = "c6h4clch3";
  inputs.src-nimsuite-develop.ref   = "refs/heads/develop";
  inputs.src-nimsuite-develop.repo  = "NimSuite";
  inputs.src-nimsuite-develop.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimsuite-develop"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimsuite-develop";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}