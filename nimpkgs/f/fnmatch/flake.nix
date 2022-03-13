{
  description = ''Nim module for filename matching with UNIX shell patterns'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."fnmatch-master".dir   = "master";
  inputs."fnmatch-master".owner = "nim-nix-pkgs";
  inputs."fnmatch-master".ref   = "master";
  inputs."fnmatch-master".repo  = "fnmatch";
  inputs."fnmatch-master".type  = "github";
  inputs."fnmatch-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fnmatch-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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