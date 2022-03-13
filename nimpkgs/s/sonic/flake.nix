{
  description = ''client for sonic search backend'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."sonic-master".dir   = "master";
  inputs."sonic-master".owner = "nim-nix-pkgs";
  inputs."sonic-master".ref   = "master";
  inputs."sonic-master".repo  = "sonic";
  inputs."sonic-master".type  = "github";
  inputs."sonic-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sonic-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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