{
  description = ''Signal and Slot library for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-sling-master.flake = false;
  inputs.src-sling-master.owner = "Druage";
  inputs.src-sling-master.ref   = "refs/heads/master";
  inputs.src-sling-master.repo  = "sling";
  inputs.src-sling-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-sling-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-sling-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}