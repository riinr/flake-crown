{
  description = ''Conversion between integers and Roman numerals'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."romans-master".dir   = "master";
  inputs."romans-master".owner = "nim-nix-pkgs";
  inputs."romans-master".ref   = "master";
  inputs."romans-master".repo  = "romans";
  inputs."romans-master".type  = "github";
  inputs."romans-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."romans-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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