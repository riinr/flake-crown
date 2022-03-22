{
  description = ''System info, CPU, OS, Memory'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-sysinfo-master.flake = false;
  inputs.src-sysinfo-master.ref   = "refs/heads/master";
  inputs.src-sysinfo-master.owner = "treeform";
  inputs.src-sysinfo-master.repo  = "sysinfo";
  inputs.src-sysinfo-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-sysinfo-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-sysinfo-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}