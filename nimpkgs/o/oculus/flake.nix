{
  description = ''Bindings for the Oculus VR SDK.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."oculus-master".dir   = "master";
  inputs."oculus-master".owner = "nim-nix-pkgs";
  inputs."oculus-master".ref   = "master";
  inputs."oculus-master".repo  = "oculus";
  inputs."oculus-master".type  = "github";
  inputs."oculus-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oculus-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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