{
  description = ''Obsolete - please use isense instead!'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-io-isense-master.flake = false;
  inputs.src-io-isense-master.ref   = "refs/heads/master";
  inputs.src-io-isense-master.owner = "nimious";
  inputs.src-io-isense-master.repo  = "io-isense";
  inputs.src-io-isense-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-io-isense-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-io-isense-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}