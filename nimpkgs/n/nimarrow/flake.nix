{
  description = ''apache arrow bindings for nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimarrow-master".dir   = "master";
  inputs."nimarrow-master".owner = "nim-nix-pkgs";
  inputs."nimarrow-master".ref   = "master";
  inputs."nimarrow-master".repo  = "nimarrow";
  inputs."nimarrow-master".type  = "github";
  inputs."nimarrow-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimarrow-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimarrow-v0_1_1".dir   = "v0_1_1";
  inputs."nimarrow-v0_1_1".owner = "nim-nix-pkgs";
  inputs."nimarrow-v0_1_1".ref   = "master";
  inputs."nimarrow-v0_1_1".repo  = "nimarrow";
  inputs."nimarrow-v0_1_1".type  = "github";
  inputs."nimarrow-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimarrow-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimarrow-v0_1_2".dir   = "v0_1_2";
  inputs."nimarrow-v0_1_2".owner = "nim-nix-pkgs";
  inputs."nimarrow-v0_1_2".ref   = "master";
  inputs."nimarrow-v0_1_2".repo  = "nimarrow";
  inputs."nimarrow-v0_1_2".type  = "github";
  inputs."nimarrow-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimarrow-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimarrow-v0_1_3".dir   = "v0_1_3";
  inputs."nimarrow-v0_1_3".owner = "nim-nix-pkgs";
  inputs."nimarrow-v0_1_3".ref   = "master";
  inputs."nimarrow-v0_1_3".repo  = "nimarrow";
  inputs."nimarrow-v0_1_3".type  = "github";
  inputs."nimarrow-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimarrow-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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