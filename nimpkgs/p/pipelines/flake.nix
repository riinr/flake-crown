{
  description = ''A tiny framework & language for crafting massively parallel data pipelines'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."pipelines-master".dir   = "master";
  inputs."pipelines-master".owner = "nim-nix-pkgs";
  inputs."pipelines-master".ref   = "master";
  inputs."pipelines-master".repo  = "pipelines";
  inputs."pipelines-master".type  = "github";
  inputs."pipelines-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pipelines-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pipelines-v0_1_0".dir   = "v0_1_0";
  inputs."pipelines-v0_1_0".owner = "nim-nix-pkgs";
  inputs."pipelines-v0_1_0".ref   = "master";
  inputs."pipelines-v0_1_0".repo  = "pipelines";
  inputs."pipelines-v0_1_0".type  = "github";
  inputs."pipelines-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pipelines-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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