{
  description = ''Functionality for compare two values'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."qeu-master".dir   = "master";
  inputs."qeu-master".owner = "nim-nix-pkgs";
  inputs."qeu-master".ref   = "master";
  inputs."qeu-master".repo  = "qeu";
  inputs."qeu-master".type  = "github";
  inputs."qeu-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."qeu-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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