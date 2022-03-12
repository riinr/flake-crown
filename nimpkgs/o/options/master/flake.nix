{
  description = ''Temporary package to fix broken code in 0.11.2 stable.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-options-master.flake = false;
  inputs.src-options-master.owner = "fallingduck";
  inputs.src-options-master.ref   = "refs/heads/master";
  inputs.src-options-master.repo  = "options-nim";
  inputs.src-options-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-options-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-options-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}