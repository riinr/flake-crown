{
  description = ''OS Utils for Nim, simple tiny but useful procs for OS. Turn Display OFF, set Process Name, set Process CPU Usage Limit cap from 5% to 100% on global percentage.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-osutil-master.flake = false;
  inputs.src-osutil-master.ref   = "refs/heads/master";
  inputs.src-osutil-master.owner = "juancarlospaco";
  inputs.src-osutil-master.repo  = "nim-osutil";
  inputs.src-osutil-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-osutil-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-osutil-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}