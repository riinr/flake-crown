{
  description = ''The SHIORI DLL interface'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-shioridll-master.flake = false;
  inputs.src-shioridll-master.ref   = "refs/heads/master";
  inputs.src-shioridll-master.owner = "Narazaka";
  inputs.src-shioridll-master.repo  = "shioridll-nim";
  inputs.src-shioridll-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-shioridll-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-shioridll-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}