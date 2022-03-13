{
  description = ''Control AnyBar instances with Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."anybar-master".dir   = "master";
  inputs."anybar-master".owner = "nim-nix-pkgs";
  inputs."anybar-master".ref   = "master";
  inputs."anybar-master".repo  = "anybar";
  inputs."anybar-master".type  = "github";
  inputs."anybar-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."anybar-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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