{
  description = ''Serial library for Windows.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."winserial-master".dir   = "master";
  inputs."winserial-master".owner = "nim-nix-pkgs";
  inputs."winserial-master".ref   = "master";
  inputs."winserial-master".repo  = "winserial";
  inputs."winserial-master".type  = "github";
  inputs."winserial-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."winserial-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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