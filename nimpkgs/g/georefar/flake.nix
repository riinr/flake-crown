{
  description = ''GeoRef Argentina Government MultiSync API Client for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."georefar-master".dir   = "master";
  inputs."georefar-master".owner = "nim-nix-pkgs";
  inputs."georefar-master".ref   = "master";
  inputs."georefar-master".repo  = "georefar";
  inputs."georefar-master".type  = "github";
  inputs."georefar-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."georefar-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."georefar-0_1_5".dir   = "0_1_5";
  inputs."georefar-0_1_5".owner = "nim-nix-pkgs";
  inputs."georefar-0_1_5".ref   = "master";
  inputs."georefar-0_1_5".repo  = "georefar";
  inputs."georefar-0_1_5".type  = "github";
  inputs."georefar-0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."georefar-0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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