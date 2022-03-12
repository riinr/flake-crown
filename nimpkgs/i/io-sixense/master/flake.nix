{
  description = ''Obsolete - please use sixense instead!'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-io-sixense-master.flake = false;
  inputs.src-io-sixense-master.owner = "nimious";
  inputs.src-io-sixense-master.ref   = "refs/heads/master";
  inputs.src-io-sixense-master.repo  = "io-sixense";
  inputs.src-io-sixense-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-io-sixense-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-io-sixense-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}