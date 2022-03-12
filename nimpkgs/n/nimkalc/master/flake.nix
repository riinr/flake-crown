{
  description = ''An advanced parsing library for mathematical expressions and equations'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimkalc-master.flake = false;
  inputs.src-nimkalc-master.owner = "nocturn9x";
  inputs.src-nimkalc-master.ref   = "refs/heads/master";
  inputs.src-nimkalc-master.repo  = "nimkalc";
  inputs.src-nimkalc-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimkalc-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimkalc-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}