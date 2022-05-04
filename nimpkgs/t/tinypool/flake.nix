{
  description = ''A minimalistic connection pooling package'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."tinypool-master".dir   = "master";
  inputs."tinypool-master".owner = "nim-nix-pkgs";
  inputs."tinypool-master".ref   = "master";
  inputs."tinypool-master".repo  = "tinypool";
  inputs."tinypool-master".type  = "github";
  inputs."tinypool-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tinypool-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."tinypool-0_2_0".dir   = "0_2_0";
  inputs."tinypool-0_2_0".owner = "nim-nix-pkgs";
  inputs."tinypool-0_2_0".ref   = "master";
  inputs."tinypool-0_2_0".repo  = "tinypool";
  inputs."tinypool-0_2_0".type  = "github";
  inputs."tinypool-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tinypool-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."tinypool-0_2_1".dir   = "0_2_1";
  inputs."tinypool-0_2_1".owner = "nim-nix-pkgs";
  inputs."tinypool-0_2_1".ref   = "master";
  inputs."tinypool-0_2_1".repo  = "tinypool";
  inputs."tinypool-0_2_1".type  = "github";
  inputs."tinypool-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tinypool-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."tinypool-0_3_0".dir   = "0_3_0";
  inputs."tinypool-0_3_0".owner = "nim-nix-pkgs";
  inputs."tinypool-0_3_0".ref   = "master";
  inputs."tinypool-0_3_0".repo  = "tinypool";
  inputs."tinypool-0_3_0".type  = "github";
  inputs."tinypool-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tinypool-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."tinypool-0_3_1".dir   = "0_3_1";
  inputs."tinypool-0_3_1".owner = "nim-nix-pkgs";
  inputs."tinypool-0_3_1".ref   = "master";
  inputs."tinypool-0_3_1".repo  = "tinypool";
  inputs."tinypool-0_3_1".type  = "github";
  inputs."tinypool-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tinypool-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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