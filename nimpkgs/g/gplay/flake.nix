{
  description = ''Google Play APK Uploader'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."gplay-master".dir   = "master";
  inputs."gplay-master".owner = "nim-nix-pkgs";
  inputs."gplay-master".ref   = "master";
  inputs."gplay-master".repo  = "gplay";
  inputs."gplay-master".type  = "github";
  inputs."gplay-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gplay-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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