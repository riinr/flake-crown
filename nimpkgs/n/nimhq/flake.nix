{
  description = ''HQ Trivia API wrapper for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimhq-master".dir   = "master";
  inputs."nimhq-master".owner = "nim-nix-pkgs";
  inputs."nimhq-master".ref   = "master";
  inputs."nimhq-master".repo  = "nimhq";
  inputs."nimhq-master".type  = "github";
  inputs."nimhq-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimhq-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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