{
  description = ''Netty is a reliable UDP connection for games in Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-netty-0_2_0.flake = false;
  inputs.src-netty-0_2_0.ref   = "refs/tags/0.2.0";
  inputs.src-netty-0_2_0.owner = "treeform";
  inputs.src-netty-0_2_0.repo  = "netty";
  inputs.src-netty-0_2_0.type  = "github";
  
  inputs."snappy".owner = "nim-nix-pkgs";
  inputs."snappy".ref   = "master";
  inputs."snappy".repo  = "snappy";
  inputs."snappy".dir   = "master";
  inputs."snappy".type  = "github";
  inputs."snappy".inputs.nixpkgs.follows = "nixpkgs";
  inputs."snappy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-netty-0_2_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-netty-0_2_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}