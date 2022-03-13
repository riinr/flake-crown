{
  description = ''Parsing and serializing for the TNetstring format.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."tnetstring-master".dir   = "master";
  inputs."tnetstring-master".owner = "nim-nix-pkgs";
  inputs."tnetstring-master".ref   = "master";
  inputs."tnetstring-master".repo  = "tnetstring";
  inputs."tnetstring-master".type  = "github";
  inputs."tnetstring-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tnetstring-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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