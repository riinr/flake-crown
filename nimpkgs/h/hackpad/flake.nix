{
  description = ''Hackathon Web Scratchpad for teaching Nim on events using Wifi with limited or no Internet'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."hackpad-master".dir   = "master";
  inputs."hackpad-master".owner = "nim-nix-pkgs";
  inputs."hackpad-master".ref   = "master";
  inputs."hackpad-master".repo  = "hackpad";
  inputs."hackpad-master".type  = "github";
  inputs."hackpad-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hackpad-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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