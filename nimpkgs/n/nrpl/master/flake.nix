{
  description = ''A Nim REPL'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nrpl-master.flake = false;
  inputs.src-nrpl-master.owner = "vegansk";
  inputs.src-nrpl-master.ref   = "master";
  inputs.src-nrpl-master.repo  = "nrpl";
  inputs.src-nrpl-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nrpl-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nrpl-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}