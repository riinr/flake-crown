{
  description = ''RESTful URI router'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nest-develop.flake = false;
  inputs.src-nest-develop.owner = "kedean";
  inputs.src-nest-develop.ref   = "refs/heads/develop";
  inputs.src-nest-develop.repo  = "nest";
  inputs.src-nest-develop.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nest-develop"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nest-develop";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}