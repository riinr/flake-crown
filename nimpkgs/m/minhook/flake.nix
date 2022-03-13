{
  description = ''MinHook wrapper for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."minhook-main".dir   = "main";
  inputs."minhook-main".owner = "nim-nix-pkgs";
  inputs."minhook-main".ref   = "master";
  inputs."minhook-main".repo  = "minhook";
  inputs."minhook-main".type  = "github";
  inputs."minhook-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."minhook-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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