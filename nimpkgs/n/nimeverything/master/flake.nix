{
  description = ''everything wrapper (everything:http://www.voidtools.com/)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimeverything-master.flake = false;
  inputs.src-nimeverything-master.ref   = "refs/heads/master";
  inputs.src-nimeverything-master.owner = "xland";
  inputs.src-nimeverything-master.repo  = "nimeverything";
  inputs.src-nimeverything-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimeverything-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimeverything-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}