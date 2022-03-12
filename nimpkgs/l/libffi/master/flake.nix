{
  description = ''libffi wrapper for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-libffi-master.flake = false;
  inputs.src-libffi-master.owner = "Araq";
  inputs.src-libffi-master.ref   = "refs/heads/master";
  inputs.src-libffi-master.repo  = "libffi";
  inputs.src-libffi-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-libffi-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-libffi-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}