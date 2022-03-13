{
  description = ''Advanced logging library for Nim with structured logging, formatters, filters and writers.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."omnilog-master".dir   = "master";
  inputs."omnilog-master".owner = "nim-nix-pkgs";
  inputs."omnilog-master".ref   = "master";
  inputs."omnilog-master".repo  = "omnilog";
  inputs."omnilog-master".type  = "github";
  inputs."omnilog-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."omnilog-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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