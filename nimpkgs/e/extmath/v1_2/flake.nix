{
  description = ''Nim math library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-extmath-v1_2.flake = false;
  inputs.src-extmath-v1_2.owner = "achesak";
  inputs.src-extmath-v1_2.ref   = "v1_2";
  inputs.src-extmath-v1_2.repo  = "extmath.nim";
  inputs.src-extmath-v1_2.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-extmath-v1_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-extmath-v1_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}