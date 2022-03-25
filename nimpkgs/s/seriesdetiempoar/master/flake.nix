{
  description = ''Series de Tiempo de Argentina Government MultiSync API Client for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-seriesdetiempoar-master.flake = false;
  inputs.src-seriesdetiempoar-master.ref   = "refs/heads/master";
  inputs.src-seriesdetiempoar-master.owner = "juancarlospaco";
  inputs.src-seriesdetiempoar-master.repo  = "nim-seriesdetiempoar";
  inputs.src-seriesdetiempoar-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-seriesdetiempoar-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-seriesdetiempoar-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}