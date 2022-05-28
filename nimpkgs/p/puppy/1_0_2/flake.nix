{
  description = ''Puppy fetches HTML pages for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-puppy-1_0_2.flake = false;
  inputs.src-puppy-1_0_2.ref   = "refs/tags/1.0.2";
  inputs.src-puppy-1_0_2.owner = "treeform";
  inputs.src-puppy-1_0_2.repo  = "puppy";
  inputs.src-puppy-1_0_2.type  = "github";
  
  inputs."urlly".owner = "nim-nix-pkgs";
  inputs."urlly".ref   = "master";
  inputs."urlly".repo  = "urlly";
  inputs."urlly".dir   = "1_0_0";
  inputs."urlly".type  = "github";
  inputs."urlly".inputs.nixpkgs.follows = "nixpkgs";
  inputs."urlly".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."winim".owner = "nim-nix-pkgs";
  inputs."winim".ref   = "master";
  inputs."winim".repo  = "winim";
  inputs."winim".dir   = "3_8_0";
  inputs."winim".type  = "github";
  inputs."winim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."winim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libcurl".owner = "nim-nix-pkgs";
  inputs."libcurl".ref   = "master";
  inputs."libcurl".repo  = "libcurl";
  inputs."libcurl".dir   = "v1_0_0";
  inputs."libcurl".type  = "github";
  inputs."libcurl".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libcurl".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy".owner = "nim-nix-pkgs";
  inputs."zippy".ref   = "master";
  inputs."zippy".repo  = "zippy";
  inputs."zippy".dir   = "0_9_8";
  inputs."zippy".type  = "github";
  inputs."zippy".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-puppy-1_0_2"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-puppy-1_0_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}