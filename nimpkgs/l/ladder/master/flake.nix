{
  description = ''Ladder logic macros for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ladder-master.flake = false;
  inputs.src-ladder-master.owner = "ryukoposting";
  inputs.src-ladder-master.ref   = "refs/heads/master";
  inputs.src-ladder-master.repo  = "nim-ladder";
  inputs.src-ladder-master.type  = "gitlab";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ladder-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-ladder-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}