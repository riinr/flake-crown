{
  description = ''Steamworks SDK API for shipping games on Steam.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."steamworks-master".dir   = "master";
  inputs."steamworks-master".owner = "nim-nix-pkgs";
  inputs."steamworks-master".ref   = "master";
  inputs."steamworks-master".repo  = "steamworks";
  inputs."steamworks-master".type  = "github";
  inputs."steamworks-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."steamworks-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."steamworks-v0_1_1".dir   = "v0_1_1";
  inputs."steamworks-v0_1_1".owner = "nim-nix-pkgs";
  inputs."steamworks-v0_1_1".ref   = "master";
  inputs."steamworks-v0_1_1".repo  = "steamworks";
  inputs."steamworks-v0_1_1".type  = "github";
  inputs."steamworks-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."steamworks-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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