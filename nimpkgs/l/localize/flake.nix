{
  description = ''Compile time localization for applications'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."localize-master".dir   = "master";
  inputs."localize-master".owner = "nim-nix-pkgs";
  inputs."localize-master".ref   = "master";
  inputs."localize-master".repo  = "localize";
  inputs."localize-master".type  = "github";
  inputs."localize-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."localize-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."localize-0_1".dir   = "0_1";
  inputs."localize-0_1".owner = "nim-nix-pkgs";
  inputs."localize-0_1".ref   = "master";
  inputs."localize-0_1".repo  = "localize";
  inputs."localize-0_1".type  = "github";
  inputs."localize-0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."localize-0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."localize-0_2".dir   = "0_2";
  inputs."localize-0_2".owner = "nim-nix-pkgs";
  inputs."localize-0_2".ref   = "master";
  inputs."localize-0_2".repo  = "localize";
  inputs."localize-0_2".type  = "github";
  inputs."localize-0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."localize-0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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