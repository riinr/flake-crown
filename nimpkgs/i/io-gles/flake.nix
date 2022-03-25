{
  description = ''Obsolete - please use gles instead!'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."gles-master".dir   = "master";
  inputs."gles-master".owner = "nim-nix-pkgs";
  inputs."gles-master".ref   = "master";
  inputs."gles-master".repo  = "gles";
  inputs."gles-master".type  = "github";
  inputs."gles-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gles-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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