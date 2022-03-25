{
  description = ''Common unicode operations'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-unicodeplus-v0_6_0.flake = false;
  inputs.src-unicodeplus-v0_6_0.ref   = "refs/tags/v0.6.0";
  inputs.src-unicodeplus-v0_6_0.owner = "nitely";
  inputs.src-unicodeplus-v0_6_0.repo  = "nim-unicodeplus";
  inputs.src-unicodeplus-v0_6_0.type  = "github";
  
  inputs."unicodedb".owner = "nim-nix-pkgs";
  inputs."unicodedb".ref   = "master";
  inputs."unicodedb".repo  = "unicodedb";
  inputs."unicodedb".dir   = "v0_10_0";
  inputs."unicodedb".type  = "github";
  inputs."unicodedb".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodedb".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."segmentation".owner = "nim-nix-pkgs";
  inputs."segmentation".ref   = "master";
  inputs."segmentation".repo  = "segmentation";
  inputs."segmentation".dir   = "v0_1_0";
  inputs."segmentation".type  = "github";
  inputs."segmentation".inputs.nixpkgs.follows = "nixpkgs";
  inputs."segmentation".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-unicodeplus-v0_6_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-unicodeplus-v0_6_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}