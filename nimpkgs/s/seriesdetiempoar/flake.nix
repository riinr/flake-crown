{
  description = ''Series de Tiempo de Argentina Government MultiSync API Client for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."seriesdetiempoar-master".dir   = "master";
  inputs."seriesdetiempoar-master".owner = "nim-nix-pkgs";
  inputs."seriesdetiempoar-master".ref   = "master";
  inputs."seriesdetiempoar-master".repo  = "seriesdetiempoar";
  inputs."seriesdetiempoar-master".type  = "github";
  inputs."seriesdetiempoar-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."seriesdetiempoar-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"];
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}