{
  description = ''Binding for Intel Storage Acceleration library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."isa-master".dir   = "master";
  inputs."isa-master".owner = "nim-nix-pkgs";
  inputs."isa-master".ref   = "master";
  inputs."isa-master".repo  = "isa";
  inputs."isa-master".type  = "github";
  inputs."isa-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."isa-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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