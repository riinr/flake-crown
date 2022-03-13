{
  description = ''exception tracking for older versions of nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."upraises-main".dir   = "main";
  inputs."upraises-main".owner = "nim-nix-pkgs";
  inputs."upraises-main".ref   = "master";
  inputs."upraises-main".repo  = "upraises";
  inputs."upraises-main".type  = "github";
  inputs."upraises-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."upraises-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."upraises-0_1_0".dir   = "0_1_0";
  inputs."upraises-0_1_0".owner = "nim-nix-pkgs";
  inputs."upraises-0_1_0".ref   = "master";
  inputs."upraises-0_1_0".repo  = "upraises";
  inputs."upraises-0_1_0".type  = "github";
  inputs."upraises-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."upraises-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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