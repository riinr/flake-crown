{
  description = ''A client for the Arch Linux User Repository (AUR)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."aur-master".dir   = "master";
  inputs."aur-master".owner = "nim-nix-pkgs";
  inputs."aur-master".ref   = "master";
  inputs."aur-master".repo  = "aur";
  inputs."aur-master".type  = "github";
  inputs."aur-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."aur-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."aur-v0_2_0".dir   = "v0_2_0";
  inputs."aur-v0_2_0".owner = "nim-nix-pkgs";
  inputs."aur-v0_2_0".ref   = "master";
  inputs."aur-v0_2_0".repo  = "aur";
  inputs."aur-v0_2_0".type  = "github";
  inputs."aur-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."aur-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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