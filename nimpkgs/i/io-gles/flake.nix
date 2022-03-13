{
  description = ''Obsolete - please use gles instead!'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."io-gles-master".dir   = "master";
  inputs."io-gles-master".owner = "nim-nix-pkgs";
  inputs."io-gles-master".ref   = "master";
  inputs."io-gles-master".repo  = "io-gles";
  inputs."io-gles-master".type  = "github";
  inputs."io-gles-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."io-gles-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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