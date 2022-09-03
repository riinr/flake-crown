{
  description = ''Near-Duplicate File Detection'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ndup-main".dir   = "main";
  inputs."ndup-main".owner = "nim-nix-pkgs";
  inputs."ndup-main".ref   = "master";
  inputs."ndup-main".repo  = "ndup";
  inputs."ndup-main".type  = "github";
  inputs."ndup-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ndup-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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