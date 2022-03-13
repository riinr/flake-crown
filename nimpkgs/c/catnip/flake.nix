{
  description = ''Assembler for runtime code generation'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."catnip-main".dir   = "main";
  inputs."catnip-main".owner = "nim-nix-pkgs";
  inputs."catnip-main".ref   = "master";
  inputs."catnip-main".repo  = "catnip";
  inputs."catnip-main".type  = "github";
  inputs."catnip-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."catnip-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."catnip-0_1_0".dir   = "0_1_0";
  inputs."catnip-0_1_0".owner = "nim-nix-pkgs";
  inputs."catnip-0_1_0".ref   = "master";
  inputs."catnip-0_1_0".repo  = "catnip";
  inputs."catnip-0_1_0".type  = "github";
  inputs."catnip-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."catnip-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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