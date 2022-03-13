{
  description = ''Lightweight Contract Programming, Design by Contract, on 9 LoC, NimScript, JavaScript, compile-time.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."contra-master".dir   = "master";
  inputs."contra-master".owner = "nim-nix-pkgs";
  inputs."contra-master".ref   = "master";
  inputs."contra-master".repo  = "contra";
  inputs."contra-master".type  = "github";
  inputs."contra-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."contra-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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