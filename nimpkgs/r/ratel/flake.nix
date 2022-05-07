{
  description = ''Zero-cost abstractions for microcontrollers'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ratel-master".dir   = "master";
  inputs."ratel-master".owner = "nim-nix-pkgs";
  inputs."ratel-master".ref   = "master";
  inputs."ratel-master".repo  = "ratel";
  inputs."ratel-master".type  = "github";
  inputs."ratel-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ratel-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ratel-v0_2_0".dir   = "v0_2_0";
  inputs."ratel-v0_2_0".owner = "nim-nix-pkgs";
  inputs."ratel-v0_2_0".ref   = "master";
  inputs."ratel-v0_2_0".repo  = "ratel";
  inputs."ratel-v0_2_0".type  = "github";
  inputs."ratel-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ratel-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ratel-v0_2_1".dir   = "v0_2_1";
  inputs."ratel-v0_2_1".owner = "nim-nix-pkgs";
  inputs."ratel-v0_2_1".ref   = "master";
  inputs."ratel-v0_2_1".repo  = "ratel";
  inputs."ratel-v0_2_1".type  = "github";
  inputs."ratel-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ratel-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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