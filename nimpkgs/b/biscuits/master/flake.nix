{
  description = ''better cookie handling'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-biscuits-master.flake = false;
  inputs.src-biscuits-master.owner = "achesak";
  inputs.src-biscuits-master.ref   = "master";
  inputs.src-biscuits-master.repo  = "nim-biscuits";
  inputs.src-biscuits-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-biscuits-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-biscuits-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}