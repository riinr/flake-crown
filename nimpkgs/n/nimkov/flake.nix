{
  description = ''Text generator, based on Markov Chains (Markov text generator)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimkov-master".dir   = "master";
  inputs."nimkov-master".owner = "nim-nix-pkgs";
  inputs."nimkov-master".ref   = "master";
  inputs."nimkov-master".repo  = "nimkov";
  inputs."nimkov-master".type  = "github";
  inputs."nimkov-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimkov-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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