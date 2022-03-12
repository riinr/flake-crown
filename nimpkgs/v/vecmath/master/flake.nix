{
  description = ''various vector maths utils for nimrod'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-vecmath-master.flake = false;
  inputs.src-vecmath-master.owner = "barcharcraz";
  inputs.src-vecmath-master.ref   = "refs/heads/master";
  inputs.src-vecmath-master.repo  = "vecmath";
  inputs.src-vecmath-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-vecmath-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-vecmath-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}