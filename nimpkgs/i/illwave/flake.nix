{
  description = ''A cross-platform terminal UI library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."illwave-master".dir   = "master";
  inputs."illwave-master".owner = "nim-nix-pkgs";
  inputs."illwave-master".ref   = "master";
  inputs."illwave-master".repo  = "illwave";
  inputs."illwave-master".type  = "github";
  inputs."illwave-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."illwave-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."illwave-0_1_0".dir   = "0_1_0";
  inputs."illwave-0_1_0".owner = "nim-nix-pkgs";
  inputs."illwave-0_1_0".ref   = "master";
  inputs."illwave-0_1_0".repo  = "illwave";
  inputs."illwave-0_1_0".type  = "github";
  inputs."illwave-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."illwave-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."illwave-0_2_0".dir   = "0_2_0";
  inputs."illwave-0_2_0".owner = "nim-nix-pkgs";
  inputs."illwave-0_2_0".ref   = "master";
  inputs."illwave-0_2_0".repo  = "illwave";
  inputs."illwave-0_2_0".type  = "github";
  inputs."illwave-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."illwave-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."illwave-0_3_0".dir   = "0_3_0";
  inputs."illwave-0_3_0".owner = "nim-nix-pkgs";
  inputs."illwave-0_3_0".ref   = "master";
  inputs."illwave-0_3_0".repo  = "illwave";
  inputs."illwave-0_3_0".type  = "github";
  inputs."illwave-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."illwave-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."illwave-0_4_0".dir   = "0_4_0";
  inputs."illwave-0_4_0".owner = "nim-nix-pkgs";
  inputs."illwave-0_4_0".ref   = "master";
  inputs."illwave-0_4_0".repo  = "illwave";
  inputs."illwave-0_4_0".type  = "github";
  inputs."illwave-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."illwave-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."illwave-0_5_0".dir   = "0_5_0";
  inputs."illwave-0_5_0".owner = "nim-nix-pkgs";
  inputs."illwave-0_5_0".ref   = "master";
  inputs."illwave-0_5_0".repo  = "illwave";
  inputs."illwave-0_5_0".type  = "github";
  inputs."illwave-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."illwave-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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