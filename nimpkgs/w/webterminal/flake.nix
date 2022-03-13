{
  description = ''Very simple browser Javascript TTY web terminal'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."webterminal-master".dir   = "master";
  inputs."webterminal-master".owner = "nim-nix-pkgs";
  inputs."webterminal-master".ref   = "master";
  inputs."webterminal-master".repo  = "webterminal";
  inputs."webterminal-master".type  = "github";
  inputs."webterminal-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."webterminal-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."webterminal-v0_0_1".dir   = "v0_0_1";
  inputs."webterminal-v0_0_1".owner = "nim-nix-pkgs";
  inputs."webterminal-v0_0_1".ref   = "master";
  inputs."webterminal-v0_0_1".repo  = "webterminal";
  inputs."webterminal-v0_0_1".type  = "github";
  inputs."webterminal-v0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."webterminal-v0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."webterminal-v0_0_2".dir   = "v0_0_2";
  inputs."webterminal-v0_0_2".owner = "nim-nix-pkgs";
  inputs."webterminal-v0_0_2".ref   = "master";
  inputs."webterminal-v0_0_2".repo  = "webterminal";
  inputs."webterminal-v0_0_2".type  = "github";
  inputs."webterminal-v0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."webterminal-v0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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