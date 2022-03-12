{
  description = ''A simple interface to a running Consul agent.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-consul-master.flake = false;
  inputs.src-consul-master.owner = "makingspace";
  inputs.src-consul-master.ref   = "refs/heads/master";
  inputs.src-consul-master.repo  = "nim_consul";
  inputs.src-consul-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-consul-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-consul-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}