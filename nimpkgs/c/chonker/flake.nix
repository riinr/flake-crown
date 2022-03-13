{
  description = ''Arch Linux Pacman Optimizer'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."chonker-master".dir   = "master";
  inputs."chonker-master".owner = "nim-nix-pkgs";
  inputs."chonker-master".ref   = "master";
  inputs."chonker-master".repo  = "chonker";
  inputs."chonker-master".type  = "github";
  inputs."chonker-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chonker-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chonker-0_0_1".dir   = "0_0_1";
  inputs."chonker-0_0_1".owner = "nim-nix-pkgs";
  inputs."chonker-0_0_1".ref   = "master";
  inputs."chonker-0_0_1".repo  = "chonker";
  inputs."chonker-0_0_1".type  = "github";
  inputs."chonker-0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chonker-0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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