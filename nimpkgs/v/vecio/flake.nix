{
  description = ''vectored io for nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."vecio-master".dir   = "master";
  inputs."vecio-master".owner = "nim-nix-pkgs";
  inputs."vecio-master".ref   = "master";
  inputs."vecio-master".repo  = "vecio";
  inputs."vecio-master".type  = "github";
  inputs."vecio-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vecio-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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