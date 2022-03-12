{
  description = ''Interface for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-shene-master.flake = false;
  inputs.src-shene-master.owner = "xflywind";
  inputs.src-shene-master.ref   = "refs/heads/master";
  inputs.src-shene-master.repo  = "shene";
  inputs.src-shene-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-shene-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-shene-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}