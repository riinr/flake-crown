{
  description = ''Converts Roman numerals to what you understand without a blink'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."romanim-master".dir   = "master";
  inputs."romanim-master".owner = "nim-nix-pkgs";
  inputs."romanim-master".ref   = "master";
  inputs."romanim-master".repo  = "romanim";
  inputs."romanim-master".type  = "github";
  inputs."romanim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."romanim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."romanim-0_1_0".dir   = "0_1_0";
  inputs."romanim-0_1_0".owner = "nim-nix-pkgs";
  inputs."romanim-0_1_0".ref   = "master";
  inputs."romanim-0_1_0".repo  = "romanim";
  inputs."romanim-0_1_0".type  = "github";
  inputs."romanim-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."romanim-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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