{
  description = ''i3 IPC client'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-i3ipc-master.flake = false;
  inputs.src-i3ipc-master.ref   = "refs/heads/master";
  inputs.src-i3ipc-master.owner = "FedericoCeratto";
  inputs.src-i3ipc-master.repo  = "nim-i3ipc";
  inputs.src-i3ipc-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-i3ipc-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-i3ipc-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}