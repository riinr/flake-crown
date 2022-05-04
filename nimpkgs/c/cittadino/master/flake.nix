{
  description = ''A simple PubSub framework using STOMP.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-cittadino-master.flake = false;
  inputs.src-cittadino-master.ref   = "refs/heads/master";
  inputs.src-cittadino-master.owner = "makingspace";
  inputs.src-cittadino-master.repo  = "cittadino";
  inputs.src-cittadino-master.type  = "github";
  
  inputs."github-subsetpark-nim-stomp".owner = "nim-nix-pkgs";
  inputs."github-subsetpark-nim-stomp".ref   = "master";
  inputs."github-subsetpark-nim-stomp".repo  = "github-subsetpark-nim-stomp";
  inputs."github-subsetpark-nim-stomp".dir   = "0_1_3";
  inputs."github-subsetpark-nim-stomp".type  = "github";
  inputs."github-subsetpark-nim-stomp".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-subsetpark-nim-stomp".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-cittadino-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-cittadino-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}