{
  description = ''Common unicode operations'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-unicodeplus-v0_6_0.flake = false;
  inputs.src-unicodeplus-v0_6_0.owner = "nitely";
  inputs.src-unicodeplus-v0_6_0.ref   = "refs/tags/v0.6.0";
  inputs.src-unicodeplus-v0_6_0.repo  = "nim-unicodeplus";
  inputs.src-unicodeplus-v0_6_0.type  = "github";
  
  inputs."unicodedb".dir   = "nimpkgs/u/unicodedb";
  inputs."unicodedb".owner = "riinr";
  inputs."unicodedb".ref   = "flake-pinning";
  inputs."unicodedb".repo  = "flake-nimble";
  inputs."unicodedb".type  = "github";
  inputs."unicodedb".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodedb".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."segmentation".dir   = "nimpkgs/s/segmentation";
  inputs."segmentation".owner = "riinr";
  inputs."segmentation".ref   = "flake-pinning";
  inputs."segmentation".repo  = "flake-nimble";
  inputs."segmentation".type  = "github";
  inputs."segmentation".inputs.nixpkgs.follows = "nixpkgs";
  inputs."segmentation".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-unicodeplus-v0_6_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-unicodeplus-v0_6_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}