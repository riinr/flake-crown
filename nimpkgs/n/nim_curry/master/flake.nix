{
  description = ''Provides a macro to curry function'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nim_curry-master.flake = false;
  inputs.src-nim_curry-master.owner = "zer0-star";
  inputs.src-nim_curry-master.ref   = "master";
  inputs.src-nim_curry-master.repo  = "nim-curry";
  inputs.src-nim_curry-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nim_curry-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nim_curry-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}