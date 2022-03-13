{
  description = ''Simple RCON client in Nim lang.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimrcon-master".dir   = "master";
  inputs."nimrcon-master".owner = "nim-nix-pkgs";
  inputs."nimrcon-master".ref   = "master";
  inputs."nimrcon-master".repo  = "nimrcon";
  inputs."nimrcon-master".type  = "github";
  inputs."nimrcon-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimrcon-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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