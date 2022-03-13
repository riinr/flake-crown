{
  description = ''ed25519 key crypto bindings'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ed25519-master".dir   = "master";
  inputs."ed25519-master".owner = "nim-nix-pkgs";
  inputs."ed25519-master".ref   = "master";
  inputs."ed25519-master".repo  = "ed25519";
  inputs."ed25519-master".type  = "github";
  inputs."ed25519-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ed25519-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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