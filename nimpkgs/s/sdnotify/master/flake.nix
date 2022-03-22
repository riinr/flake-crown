{
  description = ''Systemd service notification helper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-sdnotify-master.flake = false;
  inputs.src-sdnotify-master.ref   = "refs/heads/master";
  inputs.src-sdnotify-master.owner = "FedericoCeratto";
  inputs.src-sdnotify-master.repo  = "nim-sdnotify";
  inputs.src-sdnotify-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-sdnotify-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-sdnotify-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}