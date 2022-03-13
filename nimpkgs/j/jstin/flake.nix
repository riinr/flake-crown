{
  description = ''JS {de,}serialization as it says on the tin'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."jstin-master".dir   = "master";
  inputs."jstin-master".owner = "nim-nix-pkgs";
  inputs."jstin-master".ref   = "master";
  inputs."jstin-master".repo  = "jstin";
  inputs."jstin-master".type  = "github";
  inputs."jstin-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jstin-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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