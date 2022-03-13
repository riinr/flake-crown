{
  description = ''A native-nim implementaton of the sBOX generic container format.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."sksbox-master".dir   = "master";
  inputs."sksbox-master".owner = "nim-nix-pkgs";
  inputs."sksbox-master".ref   = "master";
  inputs."sksbox-master".repo  = "sksbox";
  inputs."sksbox-master".type  = "github";
  inputs."sksbox-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sksbox-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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