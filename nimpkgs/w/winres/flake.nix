{
  description = ''Windows resource file generator'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."winres-v0_1_0".dir   = "v0_1_0";
  inputs."winres-v0_1_0".owner = "nim-nix-pkgs";
  inputs."winres-v0_1_0".ref   = "master";
  inputs."winres-v0_1_0".repo  = "winres";
  inputs."winres-v0_1_0".type  = "github";
  inputs."winres-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."winres-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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