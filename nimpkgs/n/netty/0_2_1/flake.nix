{
  description = ''Netty is a reliable UDP connection for games in Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-netty-0_2_1.flake = false;
  inputs.src-netty-0_2_1.ref   = "refs/tags/0.2.1";
  inputs.src-netty-0_2_1.owner = "treeform";
  inputs.src-netty-0_2_1.repo  = "netty";
  inputs.src-netty-0_2_1.type  = "github";
  
  inputs."flatty".owner = "nim-nix-pkgs";
  inputs."flatty".ref   = "master";
  inputs."flatty".repo  = "flatty";
  inputs."flatty".dir   = "0_2_4";
  inputs."flatty".type  = "github";
  inputs."flatty".inputs.nixpkgs.follows = "nixpkgs";
  inputs."flatty".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-netty-0_2_1"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-netty-0_2_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}