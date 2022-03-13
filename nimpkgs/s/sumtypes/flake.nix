{
  description = ''Simple variant generator empowering easy heterogeneous type operations'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."sumtypes-master".dir   = "master";
  inputs."sumtypes-master".owner = "nim-nix-pkgs";
  inputs."sumtypes-master".ref   = "master";
  inputs."sumtypes-master".repo  = "sumtypes";
  inputs."sumtypes-master".type  = "github";
  inputs."sumtypes-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sumtypes-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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