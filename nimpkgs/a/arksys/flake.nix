{
  description = ''An entity component system package'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."arksys-master".dir   = "master";
  inputs."arksys-master".owner = "nim-nix-pkgs";
  inputs."arksys-master".ref   = "master";
  inputs."arksys-master".repo  = "arksys";
  inputs."arksys-master".type  = "github";
  inputs."arksys-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arksys-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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