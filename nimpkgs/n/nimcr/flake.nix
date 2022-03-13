{
  description = ''A small program to make Nim shebang-able without the overhead of compiling each time'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimcr-master".dir   = "master";
  inputs."nimcr-master".owner = "nim-nix-pkgs";
  inputs."nimcr-master".ref   = "master";
  inputs."nimcr-master".repo  = "nimcr";
  inputs."nimcr-master".type  = "github";
  inputs."nimcr-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcr-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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