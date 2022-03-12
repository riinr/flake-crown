{
  description = ''Loop efficiently over a variadic number of containers'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-loopfusion-master.flake = false;
  inputs.src-loopfusion-master.owner = "numforge";
  inputs.src-loopfusion-master.ref   = "refs/heads/master";
  inputs.src-loopfusion-master.repo  = "loopfusion";
  inputs.src-loopfusion-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-loopfusion-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-loopfusion-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}