{
  description = ''Stack-based arbitrary-precision integers - Fast and portable with natural syntax for resource-restricted devices'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."stint-master".dir   = "master";
  inputs."stint-master".owner = "nim-nix-pkgs";
  inputs."stint-master".ref   = "master";
  inputs."stint-master".repo  = "stint";
  inputs."stint-master".type  = "github";
  inputs."stint-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stint-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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