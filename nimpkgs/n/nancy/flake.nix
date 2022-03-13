{
  description = ''Nancy - Nim fancy ANSI tables'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nancy-master".dir   = "master";
  inputs."nancy-master".owner = "nim-nix-pkgs";
  inputs."nancy-master".ref   = "master";
  inputs."nancy-master".repo  = "nancy";
  inputs."nancy-master".type  = "github";
  inputs."nancy-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nancy-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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