{
  description = ''tool to generate installers for Nim programs'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."niminst-master".dir   = "master";
  inputs."niminst-master".owner = "nim-nix-pkgs";
  inputs."niminst-master".ref   = "master";
  inputs."niminst-master".repo  = "niminst";
  inputs."niminst-master".type  = "github";
  inputs."niminst-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niminst-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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