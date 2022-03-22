{
  description = ''module for working with the UNIX group file'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-grp-master.flake = false;
  inputs.src-grp-master.owner = "achesak";
  inputs.src-grp-master.ref   = "master";
  inputs.src-grp-master.repo  = "nim-grp";
  inputs.src-grp-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-grp-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-grp-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}