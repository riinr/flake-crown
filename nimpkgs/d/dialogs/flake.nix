{
  description = ''wraps GTK+ or Windows' open file dialogs'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."dialogs-master".dir   = "master";
  inputs."dialogs-master".owner = "nim-nix-pkgs";
  inputs."dialogs-master".ref   = "master";
  inputs."dialogs-master".repo  = "dialogs";
  inputs."dialogs-master".type  = "github";
  inputs."dialogs-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dialogs-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dialogs-v1_0_0".dir   = "v1_0_0";
  inputs."dialogs-v1_0_0".owner = "nim-nix-pkgs";
  inputs."dialogs-v1_0_0".ref   = "master";
  inputs."dialogs-v1_0_0".repo  = "dialogs";
  inputs."dialogs-v1_0_0".type  = "github";
  inputs."dialogs-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dialogs-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dialogs-v1_1_0".dir   = "v1_1_0";
  inputs."dialogs-v1_1_0".owner = "nim-nix-pkgs";
  inputs."dialogs-v1_1_0".ref   = "master";
  inputs."dialogs-v1_1_0".repo  = "dialogs";
  inputs."dialogs-v1_1_0".type  = "github";
  inputs."dialogs-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dialogs-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dialogs-v1_1_1".dir   = "v1_1_1";
  inputs."dialogs-v1_1_1".owner = "nim-nix-pkgs";
  inputs."dialogs-v1_1_1".ref   = "master";
  inputs."dialogs-v1_1_1".repo  = "dialogs";
  inputs."dialogs-v1_1_1".type  = "github";
  inputs."dialogs-v1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dialogs-v1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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