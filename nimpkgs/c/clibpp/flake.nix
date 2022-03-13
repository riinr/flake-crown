{
  description = ''Easy way to 'Mock' C++ interface'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."clibpp-master".dir   = "master";
  inputs."clibpp-master".owner = "nim-nix-pkgs";
  inputs."clibpp-master".ref   = "master";
  inputs."clibpp-master".repo  = "clibpp";
  inputs."clibpp-master".type  = "github";
  inputs."clibpp-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."clibpp-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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