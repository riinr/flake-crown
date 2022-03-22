{
  description = ''Human friendly DateTime string representations, seconds to millenniums.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-datetime2human-master.flake = false;
  inputs.src-datetime2human-master.owner = "juancarlospaco";
  inputs.src-datetime2human-master.ref   = "master";
  inputs.src-datetime2human-master.repo  = "nim-datetime2human";
  inputs.src-datetime2human-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-datetime2human-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-datetime2human-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}