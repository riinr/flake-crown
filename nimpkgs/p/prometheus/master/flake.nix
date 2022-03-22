{
  description = ''A prometheus instrumentation library for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-prometheus-master.flake = false;
  inputs.src-prometheus-master.ref   = "refs/heads/master";
  inputs.src-prometheus-master.owner = "dom96";
  inputs.src-prometheus-master.repo  = "prometheus";
  inputs.src-prometheus-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-prometheus-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-prometheus-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}