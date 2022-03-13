{
  description = ''Library for working with a slack app or sending messages to a slack channel (slack.com)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."slacklib-master".dir   = "master";
  inputs."slacklib-master".owner = "nim-nix-pkgs";
  inputs."slacklib-master".ref   = "master";
  inputs."slacklib-master".repo  = "slacklib";
  inputs."slacklib-master".type  = "github";
  inputs."slacklib-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."slacklib-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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