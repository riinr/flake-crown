{
  description = ''Simplified handling of command line options and config files'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."confutils-master".dir   = "master";
  inputs."confutils-master".owner = "nim-nix-pkgs";
  inputs."confutils-master".ref   = "master";
  inputs."confutils-master".repo  = "confutils";
  inputs."confutils-master".type  = "github";
  inputs."confutils-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."confutils-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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