{
  description = ''Wrappers over the Tkrzw Database Manager C++ library.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."tkrzw-v0_1_0".dir   = "v0_1_0";
  inputs."tkrzw-v0_1_0".owner = "nim-nix-pkgs";
  inputs."tkrzw-v0_1_0".ref   = "master";
  inputs."tkrzw-v0_1_0".repo  = "tkrzw";
  inputs."tkrzw-v0_1_0".type  = "github";
  inputs."tkrzw-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tkrzw-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."tkrzw-v0_1_1".dir   = "v0_1_1";
  inputs."tkrzw-v0_1_1".owner = "nim-nix-pkgs";
  inputs."tkrzw-v0_1_1".ref   = "master";
  inputs."tkrzw-v0_1_1".repo  = "tkrzw";
  inputs."tkrzw-v0_1_1".type  = "github";
  inputs."tkrzw-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tkrzw-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."tkrzw-v0_1_2".dir   = "v0_1_2";
  inputs."tkrzw-v0_1_2".owner = "nim-nix-pkgs";
  inputs."tkrzw-v0_1_2".ref   = "master";
  inputs."tkrzw-v0_1_2".repo  = "tkrzw";
  inputs."tkrzw-v0_1_2".type  = "github";
  inputs."tkrzw-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tkrzw-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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