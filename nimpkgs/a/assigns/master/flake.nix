{
  description = ''syntax sugar for assignments'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-assigns-master.flake = false;
  inputs.src-assigns-master.ref   = "refs/heads/master";
  inputs.src-assigns-master.owner = "metagn";
  inputs.src-assigns-master.repo  = "assigns";
  inputs.src-assigns-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-assigns-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-assigns-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}