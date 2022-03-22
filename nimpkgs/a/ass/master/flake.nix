{
  description = ''libass bindings for nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ass-master.flake = false;
  inputs.src-ass-master.ref   = "refs/heads/master";
  inputs.src-ass-master.owner = "0kalekale";
  inputs.src-ass-master.repo  = "libass-nim";
  inputs.src-ass-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ass-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-ass-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}