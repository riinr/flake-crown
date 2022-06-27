{
  description = ''Assorted wrappers and reusable libraries'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimassimp-master".dir   = "master";
  inputs."nimassimp-master".owner = "nim-nix-pkgs";
  inputs."nimassimp-master".ref   = "master";
  inputs."nimassimp-master".repo  = "nimassimp";
  inputs."nimassimp-master".type  = "github";
  inputs."nimassimp-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimassimp-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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