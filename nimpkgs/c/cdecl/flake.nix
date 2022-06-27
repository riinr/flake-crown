{
  description = ''Nim helper for using C Macros'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."cdecl-main".dir   = "main";
  inputs."cdecl-main".owner = "nim-nix-pkgs";
  inputs."cdecl-main".ref   = "master";
  inputs."cdecl-main".repo  = "cdecl";
  inputs."cdecl-main".type  = "github";
  inputs."cdecl-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cdecl-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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