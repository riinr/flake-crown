{
  description = ''Bindings for libjwt'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."libjwt-master".dir   = "master";
  inputs."libjwt-master".owner = "nim-nix-pkgs";
  inputs."libjwt-master".ref   = "master";
  inputs."libjwt-master".repo  = "libjwt";
  inputs."libjwt-master".type  = "github";
  inputs."libjwt-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libjwt-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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