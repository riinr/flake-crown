{
  description = ''nim tasks apply to git hooks'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."stage-master".dir   = "master";
  inputs."stage-master".owner = "nim-nix-pkgs";
  inputs."stage-master".ref   = "master";
  inputs."stage-master".repo  = "stage";
  inputs."stage-master".type  = "github";
  inputs."stage-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stage-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stage-v0_3_5".dir   = "v0_3_5";
  inputs."stage-v0_3_5".owner = "nim-nix-pkgs";
  inputs."stage-v0_3_5".ref   = "master";
  inputs."stage-v0_3_5".repo  = "stage";
  inputs."stage-v0_3_5".type  = "github";
  inputs."stage-v0_3_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stage-v0_3_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stage-v0_3_6".dir   = "v0_3_6";
  inputs."stage-v0_3_6".owner = "nim-nix-pkgs";
  inputs."stage-v0_3_6".ref   = "master";
  inputs."stage-v0_3_6".repo  = "stage";
  inputs."stage-v0_3_6".type  = "github";
  inputs."stage-v0_3_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stage-v0_3_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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