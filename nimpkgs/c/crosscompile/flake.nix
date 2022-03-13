{
  description = ''Crosscompile Nim source code into multiple targets on Linux with this proc.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."crosscompile-master".dir   = "master";
  inputs."crosscompile-master".owner = "nim-nix-pkgs";
  inputs."crosscompile-master".ref   = "master";
  inputs."crosscompile-master".repo  = "crosscompile";
  inputs."crosscompile-master".type  = "github";
  inputs."crosscompile-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."crosscompile-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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