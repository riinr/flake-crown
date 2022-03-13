{
  description = ''Bindings for libsoundio'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."soundio-master".dir   = "master";
  inputs."soundio-master".owner = "nim-nix-pkgs";
  inputs."soundio-master".ref   = "master";
  inputs."soundio-master".repo  = "soundio";
  inputs."soundio-master".type  = "github";
  inputs."soundio-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."soundio-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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