{
  description = ''RFC3339 (dates and times) implementation for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."rfc3339-master".dir   = "master";
  inputs."rfc3339-master".owner = "nim-nix-pkgs";
  inputs."rfc3339-master".ref   = "master";
  inputs."rfc3339-master".repo  = "rfc3339";
  inputs."rfc3339-master".type  = "github";
  inputs."rfc3339-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rfc3339-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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