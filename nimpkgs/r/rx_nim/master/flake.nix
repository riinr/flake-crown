{
  description = ''An implementation of rx observables in nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-rx_nim-master.flake = false;
  inputs.src-rx_nim-master.owner = "nortero-code";
  inputs.src-rx_nim-master.ref   = "master";
  inputs.src-rx_nim-master.repo  = "rx-nim";
  inputs.src-rx_nim-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-rx_nim-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-rx_nim-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}