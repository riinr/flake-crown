{
  description = ''Implements framework-agnostic native operating system dialogs calls'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."native_dialogs-master".dir   = "master";
  inputs."native_dialogs-master".owner = "nim-nix-pkgs";
  inputs."native_dialogs-master".ref   = "master";
  inputs."native_dialogs-master".repo  = "native_dialogs";
  inputs."native_dialogs-master".type  = "github";
  inputs."native_dialogs-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."native_dialogs-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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