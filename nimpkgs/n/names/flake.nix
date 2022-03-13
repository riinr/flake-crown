{
  description = ''String interning library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."names-master".dir   = "master";
  inputs."names-master".owner = "nim-nix-pkgs";
  inputs."names-master".ref   = "master";
  inputs."names-master".repo  = "names";
  inputs."names-master".type  = "github";
  inputs."names-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."names-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."names-v0_1_0".dir   = "v0_1_0";
  inputs."names-v0_1_0".owner = "nim-nix-pkgs";
  inputs."names-v0_1_0".ref   = "master";
  inputs."names-v0_1_0".repo  = "names";
  inputs."names-v0_1_0".type  = "github";
  inputs."names-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."names-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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