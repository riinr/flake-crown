{
  description = ''A GiantBomb-wiki wrapper for nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimbomb-devel".dir   = "devel";
  inputs."nimbomb-devel".owner = "nim-nix-pkgs";
  inputs."nimbomb-devel".ref   = "master";
  inputs."nimbomb-devel".repo  = "nimbomb";
  inputs."nimbomb-devel".type  = "github";
  inputs."nimbomb-devel".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimbomb-devel".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimbomb-master".dir   = "master";
  inputs."nimbomb-master".owner = "nim-nix-pkgs";
  inputs."nimbomb-master".ref   = "master";
  inputs."nimbomb-master".repo  = "nimbomb";
  inputs."nimbomb-master".type  = "github";
  inputs."nimbomb-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimbomb-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimbomb-v0_1_0".dir   = "v0_1_0";
  inputs."nimbomb-v0_1_0".owner = "nim-nix-pkgs";
  inputs."nimbomb-v0_1_0".ref   = "master";
  inputs."nimbomb-v0_1_0".repo  = "nimbomb";
  inputs."nimbomb-v0_1_0".type  = "github";
  inputs."nimbomb-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimbomb-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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