{
  description = ''Nim math library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-extmath-master.flake = false;
  inputs.src-extmath-master.owner = "achesak";
  inputs.src-extmath-master.ref   = "refs/heads/master";
  inputs.src-extmath-master.repo  = "extmath.nim";
  inputs.src-extmath-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-extmath-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-extmath-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}