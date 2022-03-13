{
  description = ''Nim wrapper of the Sophia key/value store'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."sophia-master".dir   = "master";
  inputs."sophia-master".owner = "nim-nix-pkgs";
  inputs."sophia-master".ref   = "master";
  inputs."sophia-master".repo  = "sophia";
  inputs."sophia-master".type  = "github";
  inputs."sophia-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sophia-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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