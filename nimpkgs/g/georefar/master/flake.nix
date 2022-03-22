{
  description = ''GeoRef Argentina Government API Client for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-georefar-master.flake = false;
  inputs.src-georefar-master.owner = "juancarlospaco";
  inputs.src-georefar-master.ref   = "master";
  inputs.src-georefar-master.repo  = "nim-georefar";
  inputs.src-georefar-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-georefar-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-georefar-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}