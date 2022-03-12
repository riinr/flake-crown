{
  description = ''A small program to make Nim shebang-able without the overhead of compiling each time'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimcr-master.flake = false;
  inputs.src-nimcr-master.owner = "PMunch";
  inputs.src-nimcr-master.ref   = "refs/heads/master";
  inputs.src-nimcr-master.repo  = "nimcr";
  inputs.src-nimcr-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimcr-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimcr-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}