{
  description = ''Command to remove acceptably empty directories.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."awesome_rmdir-develop".dir   = "develop";
  inputs."awesome_rmdir-develop".owner = "nim-nix-pkgs";
  inputs."awesome_rmdir-develop".ref   = "master";
  inputs."awesome_rmdir-develop".repo  = "awesome_rmdir";
  inputs."awesome_rmdir-develop".type  = "github";
  inputs."awesome_rmdir-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."awesome_rmdir-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."awesome_rmdir-master".dir   = "master";
  inputs."awesome_rmdir-master".owner = "nim-nix-pkgs";
  inputs."awesome_rmdir-master".ref   = "master";
  inputs."awesome_rmdir-master".repo  = "awesome_rmdir";
  inputs."awesome_rmdir-master".type  = "github";
  inputs."awesome_rmdir-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."awesome_rmdir-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."awesome_rmdir-v0_2_0".dir   = "v0_2_0";
  inputs."awesome_rmdir-v0_2_0".owner = "nim-nix-pkgs";
  inputs."awesome_rmdir-v0_2_0".ref   = "master";
  inputs."awesome_rmdir-v0_2_0".repo  = "awesome_rmdir";
  inputs."awesome_rmdir-v0_2_0".type  = "github";
  inputs."awesome_rmdir-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."awesome_rmdir-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."awesome_rmdir-v0_2_1".dir   = "v0_2_1";
  inputs."awesome_rmdir-v0_2_1".owner = "nim-nix-pkgs";
  inputs."awesome_rmdir-v0_2_1".ref   = "master";
  inputs."awesome_rmdir-v0_2_1".repo  = "awesome_rmdir";
  inputs."awesome_rmdir-v0_2_1".type  = "github";
  inputs."awesome_rmdir-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."awesome_rmdir-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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