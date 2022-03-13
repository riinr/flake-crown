{
  description = ''A simple but powerful task runner that lets you define your own commands by editing a YAML configuration file.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."pls-master".dir   = "master";
  inputs."pls-master".owner = "nim-nix-pkgs";
  inputs."pls-master".ref   = "master";
  inputs."pls-master".repo  = "pls";
  inputs."pls-master".type  = "github";
  inputs."pls-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pls-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pls-v1_0_0".dir   = "v1_0_0";
  inputs."pls-v1_0_0".owner = "nim-nix-pkgs";
  inputs."pls-v1_0_0".ref   = "master";
  inputs."pls-v1_0_0".repo  = "pls";
  inputs."pls-v1_0_0".type  = "github";
  inputs."pls-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pls-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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