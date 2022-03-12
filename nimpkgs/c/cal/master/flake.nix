{
  description = ''A simple interactive calculator'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-cal-master.flake = false;
  inputs.src-cal-master.owner = "xflywind";
  inputs.src-cal-master.ref   = "refs/heads/master";
  inputs.src-cal-master.repo  = "cal";
  inputs.src-cal-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-cal-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-cal-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}