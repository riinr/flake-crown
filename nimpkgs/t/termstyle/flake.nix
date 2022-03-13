{
  description = ''Easy to use styles for terminal output'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."termstyle-master".dir   = "master";
  inputs."termstyle-master".owner = "nim-nix-pkgs";
  inputs."termstyle-master".ref   = "master";
  inputs."termstyle-master".repo  = "termstyle";
  inputs."termstyle-master".type  = "github";
  inputs."termstyle-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."termstyle-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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