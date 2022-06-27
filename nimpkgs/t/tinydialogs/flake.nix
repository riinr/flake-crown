{
  description = ''Tiny file dialogs Nim bindings.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."tinydialogs-main".dir   = "main";
  inputs."tinydialogs-main".owner = "nim-nix-pkgs";
  inputs."tinydialogs-main".ref   = "master";
  inputs."tinydialogs-main".repo  = "tinydialogs";
  inputs."tinydialogs-main".type  = "github";
  inputs."tinydialogs-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tinydialogs-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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