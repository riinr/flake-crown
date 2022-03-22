{
  description = ''Rain simulation in your terminal'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-rain-master.flake = false;
  inputs.src-rain-master.owner = "OHermesJunior";
  inputs.src-rain-master.ref   = "master";
  inputs.src-rain-master.repo  = "rain.nim";
  inputs.src-rain-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-rain-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-rain-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}