{
  description = ''A simple PubSub framework using STOMP.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-cittadino-0_1_1.flake = false;
  inputs.src-cittadino-0_1_1.owner = "makingspace";
  inputs.src-cittadino-0_1_1.ref   = "refs/tags/0.1.1";
  inputs.src-cittadino-0_1_1.repo  = "cittadino";
  inputs.src-cittadino-0_1_1.type  = "github";
  
  inputs."stomp".owner = "nim-nix-pkgs";
  inputs."stomp".ref   = "master";
  inputs."stomp".repo  = "stomp";
  inputs."stomp".type  = "github";
  inputs."stomp".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stomp".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-cittadino-0_1_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-cittadino-0_1_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}