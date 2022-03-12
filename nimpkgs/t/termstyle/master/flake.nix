{
  description = ''Easy to use styles for terminal output'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-termstyle-master.flake = false;
  inputs.src-termstyle-master.owner = "PMunch";
  inputs.src-termstyle-master.ref   = "refs/heads/master";
  inputs.src-termstyle-master.repo  = "termstyle";
  inputs.src-termstyle-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-termstyle-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-termstyle-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}