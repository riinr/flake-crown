{
  description = ''Obsolete - please use oculus instead!'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-io-oculus-master.flake = false;
  inputs.src-io-oculus-master.owner = "nimious";
  inputs.src-io-oculus-master.ref   = "refs/heads/master";
  inputs.src-io-oculus-master.repo  = "io-oculus";
  inputs.src-io-oculus-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-io-oculus-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-io-oculus-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}