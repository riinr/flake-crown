{
  description = ''Cross-platform process daemonization'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-daemon-master.flake = false;
  inputs.src-daemon-master.owner = "status-im";
  inputs.src-daemon-master.ref   = "master";
  inputs.src-daemon-master.repo  = "nim-daemon";
  inputs.src-daemon-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-daemon-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-daemon-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}