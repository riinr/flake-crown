{
  description = ''TheAudioDB API client'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."audiodb-main".dir   = "main";
  inputs."audiodb-main".owner = "nim-nix-pkgs";
  inputs."audiodb-main".ref   = "master";
  inputs."audiodb-main".repo  = "audiodb";
  inputs."audiodb-main".type  = "github";
  inputs."audiodb-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."audiodb-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."audiodb-v1_0_0".dir   = "v1_0_0";
  inputs."audiodb-v1_0_0".owner = "nim-nix-pkgs";
  inputs."audiodb-v1_0_0".ref   = "master";
  inputs."audiodb-v1_0_0".repo  = "audiodb";
  inputs."audiodb-v1_0_0".type  = "github";
  inputs."audiodb-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."audiodb-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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