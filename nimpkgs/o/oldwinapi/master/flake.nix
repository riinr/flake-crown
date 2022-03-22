{
  description = ''Old Win API library for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-oldwinapi-master.flake = false;
  inputs.src-oldwinapi-master.owner = "nim-lang";
  inputs.src-oldwinapi-master.ref   = "master";
  inputs.src-oldwinapi-master.repo  = "oldwinapi";
  inputs.src-oldwinapi-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-oldwinapi-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-oldwinapi-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}