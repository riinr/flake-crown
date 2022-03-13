{
  description = ''Servicio Meteorologico Nacional Argentina API Client'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."smnar-master".dir   = "master";
  inputs."smnar-master".owner = "nim-nix-pkgs";
  inputs."smnar-master".ref   = "master";
  inputs."smnar-master".repo  = "smnar";
  inputs."smnar-master".type  = "github";
  inputs."smnar-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."smnar-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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