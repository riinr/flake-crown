{
  description = ''Ratio calculator on your terminal'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."miter-master".dir   = "master";
  inputs."miter-master".owner = "nim-nix-pkgs";
  inputs."miter-master".ref   = "master";
  inputs."miter-master".repo  = "miter";
  inputs."miter-master".type  = "github";
  inputs."miter-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."miter-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."miter-0_1_0".dir   = "0_1_0";
  inputs."miter-0_1_0".owner = "nim-nix-pkgs";
  inputs."miter-0_1_0".ref   = "master";
  inputs."miter-0_1_0".repo  = "miter";
  inputs."miter-0_1_0".type  = "github";
  inputs."miter-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."miter-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."miter-0_2_0".dir   = "0_2_0";
  inputs."miter-0_2_0".owner = "nim-nix-pkgs";
  inputs."miter-0_2_0".ref   = "master";
  inputs."miter-0_2_0".repo  = "miter";
  inputs."miter-0_2_0".type  = "github";
  inputs."miter-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."miter-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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