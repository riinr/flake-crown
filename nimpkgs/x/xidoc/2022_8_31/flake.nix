{
  description = ''A consistent markup language'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-xidoc-2022_8_31.flake = false;
  inputs.src-xidoc-2022_8_31.ref   = "refs/tags/2022.8.31";
  inputs.src-xidoc-2022_8_31.owner = "xigoi";
  inputs.src-xidoc-2022_8_31.repo  = "xidoc";
  inputs.src-xidoc-2022_8_31.type  = "github";
  
  inputs."cligen".owner = "nim-nix-pkgs";
  inputs."cligen".ref   = "master";
  inputs."cligen".repo  = "cligen";
  inputs."cligen".dir   = "v1_5_28";
  inputs."cligen".type  = "github";
  inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."matext".owner = "nim-nix-pkgs";
  inputs."matext".ref   = "master";
  inputs."matext".repo  = "matext";
  inputs."matext".dir   = "2022_9_3";
  inputs."matext".type  = "github";
  inputs."matext".inputs.nixpkgs.follows = "nixpkgs";
  inputs."matext".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."npeg".owner = "nim-nix-pkgs";
  inputs."npeg".ref   = "master";
  inputs."npeg".repo  = "npeg";
  inputs."npeg".dir   = "0_26_0";
  inputs."npeg".type  = "github";
  inputs."npeg".inputs.nixpkgs.follows = "nixpkgs";
  inputs."npeg".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-xidoc-2022_8_31"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-xidoc-2022_8_31";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}