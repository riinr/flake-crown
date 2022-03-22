{
  description = ''Convert bytes to kilobytes, megabytes, gigabytes, etc.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-bytes2human-master.flake = false;
  inputs.src-bytes2human-master.owner = "juancarlospaco";
  inputs.src-bytes2human-master.ref   = "master";
  inputs.src-bytes2human-master.repo  = "nim-bytes2human";
  inputs.src-bytes2human-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-bytes2human-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-bytes2human-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}