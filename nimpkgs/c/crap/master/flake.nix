{
  description = ''`rm` files without fear'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-crap-master.flake = false;
  inputs.src-crap-master.ref   = "refs/heads/master";
  inputs.src-crap-master.owner = "icyphox";
  inputs.src-crap-master.repo  = "crap";
  inputs.src-crap-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-crap-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-crap-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}