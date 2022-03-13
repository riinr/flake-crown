{
  description = ''Nim's function chaining and method cascading'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."chain-master".dir   = "master";
  inputs."chain-master".owner = "nim-nix-pkgs";
  inputs."chain-master".ref   = "master";
  inputs."chain-master".repo  = "chain";
  inputs."chain-master".type  = "github";
  inputs."chain-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chain-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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