{
  description = ''Send SMS and Otp in nim, a wrapper for TextBelt's public API'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."mersal-main".dir   = "main";
  inputs."mersal-main".owner = "nim-nix-pkgs";
  inputs."mersal-main".ref   = "master";
  inputs."mersal-main".repo  = "mersal";
  inputs."mersal-main".type  = "github";
  inputs."mersal-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mersal-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mersal-v0_1_0".dir   = "v0_1_0";
  inputs."mersal-v0_1_0".owner = "nim-nix-pkgs";
  inputs."mersal-v0_1_0".ref   = "master";
  inputs."mersal-v0_1_0".repo  = "mersal";
  inputs."mersal-v0_1_0".type  = "github";
  inputs."mersal-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mersal-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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