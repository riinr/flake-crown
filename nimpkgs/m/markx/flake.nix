{
  description = ''markx selects execution targets with editor and executes commands.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."markx-master".dir   = "master";
  inputs."markx-master".owner = "nim-nix-pkgs";
  inputs."markx-master".ref   = "master";
  inputs."markx-master".repo  = "markx";
  inputs."markx-master".type  = "github";
  inputs."markx-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."markx-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."markx-v1_0_0".dir   = "v1_0_0";
  inputs."markx-v1_0_0".owner = "nim-nix-pkgs";
  inputs."markx-v1_0_0".ref   = "master";
  inputs."markx-v1_0_0".repo  = "markx";
  inputs."markx-v1_0_0".type  = "github";
  inputs."markx-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."markx-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."markx-v1_0_1".dir   = "v1_0_1";
  inputs."markx-v1_0_1".owner = "nim-nix-pkgs";
  inputs."markx-v1_0_1".ref   = "master";
  inputs."markx-v1_0_1".repo  = "markx";
  inputs."markx-v1_0_1".type  = "github";
  inputs."markx-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."markx-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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