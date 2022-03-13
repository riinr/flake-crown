{
  description = ''Flexible JSON serialization not relying on run-time type information'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."json_serialization-master".dir   = "master";
  inputs."json_serialization-master".owner = "nim-nix-pkgs";
  inputs."json_serialization-master".ref   = "master";
  inputs."json_serialization-master".repo  = "json_serialization";
  inputs."json_serialization-master".type  = "github";
  inputs."json_serialization-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."json_serialization-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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