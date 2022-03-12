{
  description = ''psutil is a cross-platform library for retrieving information on running processes and system utilization (CPU, memory, disks, network). Since 2018 maintained by Juan Carlos because was abandoned.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-psutil-master.flake = false;
  inputs.src-psutil-master.owner = "juancarlospaco";
  inputs.src-psutil-master.ref   = "refs/heads/master";
  inputs.src-psutil-master.repo  = "psutil-nim";
  inputs.src-psutil-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-psutil-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-psutil-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}