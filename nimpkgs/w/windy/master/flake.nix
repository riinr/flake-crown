{
  description = ''Windy'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-windy-master.flake = false;
  inputs.src-windy-master.ref   = "refs/heads/master";
  inputs.src-windy-master.owner = "treeform";
  inputs.src-windy-master.repo  = "windy";
  inputs.src-windy-master.type  = "github";
  
  inputs."opengl".owner = "nim-nix-pkgs";
  inputs."opengl".ref   = "master";
  inputs."opengl".repo  = "opengl";
  inputs."opengl".dir   = "1_2_6";
  inputs."opengl".type  = "github";
  inputs."opengl".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opengl".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie".owner = "nim-nix-pkgs";
  inputs."pixie".ref   = "master";
  inputs."pixie".repo  = "pixie";
  inputs."pixie".dir   = "4_2_0";
  inputs."pixie".type  = "github";
  inputs."pixie".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."urlly".owner = "nim-nix-pkgs";
  inputs."urlly".ref   = "master";
  inputs."urlly".repo  = "urlly";
  inputs."urlly".dir   = "1_0_0";
  inputs."urlly".type  = "github";
  inputs."urlly".inputs.nixpkgs.follows = "nixpkgs";
  inputs."urlly".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy".owner = "nim-nix-pkgs";
  inputs."zippy".ref   = "master";
  inputs."zippy".repo  = "zippy";
  inputs."zippy".dir   = "0_9_7";
  inputs."zippy".type  = "github";
  inputs."zippy".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ws".owner = "nim-nix-pkgs";
  inputs."ws".ref   = "master";
  inputs."ws".repo  = "ws";
  inputs."ws".dir   = "0_5_0";
  inputs."ws".type  = "github";
  inputs."ws".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ws".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-windy-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-windy-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}