{
  description = ''experiment to build a jinja like template parser'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nwt-master".dir   = "master";
  inputs."nwt-master".owner = "nim-nix-pkgs";
  inputs."nwt-master".ref   = "master";
  inputs."nwt-master".repo  = "nwt";
  inputs."nwt-master".type  = "github";
  inputs."nwt-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwt-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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