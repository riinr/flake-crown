{
  description = ''Pseudo-random number generation library inspired by Python'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-random-master.flake = false;
  inputs.src-random-master.owner = "oprypin";
  inputs.src-random-master.ref   = "master";
  inputs.src-random-master.repo  = "nim-random";
  inputs.src-random-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-random-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-random-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}