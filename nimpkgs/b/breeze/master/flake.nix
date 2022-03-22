{
  description = ''macro dsl'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-breeze-master.flake = false;
  inputs.src-breeze-master.owner = "alehander42";
  inputs.src-breeze-master.ref   = "master";
  inputs.src-breeze-master.repo  = "breeze";
  inputs.src-breeze-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-breeze-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-breeze-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}