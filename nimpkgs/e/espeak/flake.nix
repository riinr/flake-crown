{
  description = ''Nim Espeak NG wrapper, for super easy Voice and Text-To-Speech'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."espeak-master".dir   = "master";
  inputs."espeak-master".owner = "nim-nix-pkgs";
  inputs."espeak-master".ref   = "master";
  inputs."espeak-master".repo  = "espeak";
  inputs."espeak-master".type  = "github";
  inputs."espeak-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."espeak-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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