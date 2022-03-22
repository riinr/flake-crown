{
  description = ''An entity component system package'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-arksys-master.flake = false;
  inputs.src-arksys-master.owner = "wolfadex";
  inputs.src-arksys-master.ref   = "master";
  inputs.src-arksys-master.repo  = "arksys";
  inputs.src-arksys-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-arksys-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-arksys-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}