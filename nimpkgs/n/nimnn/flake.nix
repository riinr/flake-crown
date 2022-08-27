{
  description = ''Neural Networks from scratch'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimnn-master".dir   = "master";
  inputs."nimnn-master".owner = "nim-nix-pkgs";
  inputs."nimnn-master".ref   = "master";
  inputs."nimnn-master".repo  = "nimnn";
  inputs."nimnn-master".type  = "github";
  inputs."nimnn-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimnn-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimnn-v1_0_0".dir   = "v1_0_0";
  inputs."nimnn-v1_0_0".owner = "nim-nix-pkgs";
  inputs."nimnn-v1_0_0".ref   = "master";
  inputs."nimnn-v1_0_0".repo  = "nimnn";
  inputs."nimnn-v1_0_0".type  = "github";
  inputs."nimnn-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimnn-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimnn-v1_1_0".dir   = "v1_1_0";
  inputs."nimnn-v1_1_0".owner = "nim-nix-pkgs";
  inputs."nimnn-v1_1_0".ref   = "master";
  inputs."nimnn-v1_1_0".repo  = "nimnn";
  inputs."nimnn-v1_1_0".type  = "github";
  inputs."nimnn-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimnn-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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