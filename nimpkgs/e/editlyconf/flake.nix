{
  description = ''Editly config generation tools and types'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."editlyconf-master".dir   = "master";
  inputs."editlyconf-master".owner = "nim-nix-pkgs";
  inputs."editlyconf-master".ref   = "master";
  inputs."editlyconf-master".repo  = "editlyconf";
  inputs."editlyconf-master".type  = "github";
  inputs."editlyconf-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."editlyconf-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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