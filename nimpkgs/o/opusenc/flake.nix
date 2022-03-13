{
  description = ''Bindings to libopusenc'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."opusenc-master".dir   = "master";
  inputs."opusenc-master".owner = "nim-nix-pkgs";
  inputs."opusenc-master".ref   = "master";
  inputs."opusenc-master".repo  = "opusenc";
  inputs."opusenc-master".type  = "github";
  inputs."opusenc-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opusenc-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."opusenc-v0_1_0".dir   = "v0_1_0";
  inputs."opusenc-v0_1_0".owner = "nim-nix-pkgs";
  inputs."opusenc-v0_1_0".ref   = "master";
  inputs."opusenc-v0_1_0".repo  = "opusenc";
  inputs."opusenc-v0_1_0".type  = "github";
  inputs."opusenc-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opusenc-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."opusenc-v0_2_0".dir   = "v0_2_0";
  inputs."opusenc-v0_2_0".owner = "nim-nix-pkgs";
  inputs."opusenc-v0_2_0".ref   = "master";
  inputs."opusenc-v0_2_0".repo  = "opusenc";
  inputs."opusenc-v0_2_0".type  = "github";
  inputs."opusenc-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opusenc-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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