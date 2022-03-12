{
  description = ''Parsing language'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-lilt-master.flake = false;
  inputs.src-lilt-master.owner = "quelklef";
  inputs.src-lilt-master.ref   = "refs/heads/master";
  inputs.src-lilt-master.repo  = "lilt";
  inputs.src-lilt-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-lilt-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-lilt-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}