{
  description = ''Bindings for the Sixense Core API.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-sixense-master.flake = false;
  inputs.src-sixense-master.owner = "nimious";
  inputs.src-sixense-master.ref   = "refs/heads/master";
  inputs.src-sixense-master.repo  = "sixense";
  inputs.src-sixense-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-sixense-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-sixense-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}