{
  description = ''Simple async Gemini server'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."geminim-master".dir   = "master";
  inputs."geminim-master".owner = "nim-nix-pkgs";
  inputs."geminim-master".ref   = "master";
  inputs."geminim-master".repo  = "geminim";
  inputs."geminim-master".type  = "github";
  inputs."geminim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."geminim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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