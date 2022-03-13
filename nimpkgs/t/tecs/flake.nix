{
  description = ''Simple ECS implementation for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."tecs-master".dir   = "master";
  inputs."tecs-master".owner = "nim-nix-pkgs";
  inputs."tecs-master".ref   = "master";
  inputs."tecs-master".repo  = "tecs";
  inputs."tecs-master".type  = "github";
  inputs."tecs-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tecs-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."tecs-v0_1".dir   = "v0_1";
  inputs."tecs-v0_1".owner = "nim-nix-pkgs";
  inputs."tecs-v0_1".ref   = "master";
  inputs."tecs-v0_1".repo  = "tecs";
  inputs."tecs-v0_1".type  = "github";
  inputs."tecs-v0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tecs-v0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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