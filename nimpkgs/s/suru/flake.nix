{
  description = ''A tqdm-style progress bar in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."suru-master".dir   = "master";
  inputs."suru-master".owner = "nim-nix-pkgs";
  inputs."suru-master".ref   = "master";
  inputs."suru-master".repo  = "suru";
  inputs."suru-master".type  = "github";
  inputs."suru-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."suru-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."suru-v0_3_0".dir   = "v0_3_0";
  inputs."suru-v0_3_0".owner = "nim-nix-pkgs";
  inputs."suru-v0_3_0".ref   = "master";
  inputs."suru-v0_3_0".repo  = "suru";
  inputs."suru-v0_3_0".type  = "github";
  inputs."suru-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."suru-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."suru-v0_3_1".dir   = "v0_3_1";
  inputs."suru-v0_3_1".owner = "nim-nix-pkgs";
  inputs."suru-v0_3_1".ref   = "master";
  inputs."suru-v0_3_1".repo  = "suru";
  inputs."suru-v0_3_1".type  = "github";
  inputs."suru-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."suru-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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