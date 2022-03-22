{
  description = ''Nim wrapper for (and with) Celtoys's Remotery'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-Remotery-master.flake = false;
  inputs.src-Remotery-master.ref   = "refs/heads/master";
  inputs.src-Remotery-master.owner = "Halsys";
  inputs.src-Remotery-master.repo  = "Nim-Remotery";
  inputs.src-Remotery-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-Remotery-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-Remotery-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}