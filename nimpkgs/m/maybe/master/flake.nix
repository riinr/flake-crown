{
  description = ''A maybe type for nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-maybe-master.flake = false;
  inputs.src-maybe-master.owner = "superfunc";
  inputs.src-maybe-master.ref   = "master";
  inputs.src-maybe-master.repo  = "maybe";
  inputs.src-maybe-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-maybe-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-maybe-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}