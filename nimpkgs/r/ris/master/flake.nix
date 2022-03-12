{
  description = ''Module for working with RIS citation files'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ris-master.flake = false;
  inputs.src-ris-master.owner = "achesak";
  inputs.src-ris-master.ref   = "refs/heads/master";
  inputs.src-ris-master.repo  = "nim-ris";
  inputs.src-ris-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ris-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-ris-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}