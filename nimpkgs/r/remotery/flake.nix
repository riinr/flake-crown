{
  description = ''Nim wrapper for (and with) Celtoys's Remotery'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."remotery-master".dir   = "master";
  inputs."remotery-master".owner = "nim-nix-pkgs";
  inputs."remotery-master".ref   = "master";
  inputs."remotery-master".repo  = "remotery";
  inputs."remotery-master".type  = "github";
  inputs."remotery-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."remotery-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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