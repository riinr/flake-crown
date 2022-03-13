{
  description = ''osu! replay parser'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."osureplay-master".dir   = "master";
  inputs."osureplay-master".owner = "nim-nix-pkgs";
  inputs."osureplay-master".ref   = "master";
  inputs."osureplay-master".repo  = "osureplay";
  inputs."osureplay-master".type  = "github";
  inputs."osureplay-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."osureplay-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."osureplay-v0_0_3".dir   = "v0_0_3";
  inputs."osureplay-v0_0_3".owner = "nim-nix-pkgs";
  inputs."osureplay-v0_0_3".ref   = "master";
  inputs."osureplay-v0_0_3".repo  = "osureplay";
  inputs."osureplay-v0_0_3".type  = "github";
  inputs."osureplay-v0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."osureplay-v0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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