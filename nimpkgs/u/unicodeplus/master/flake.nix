{
  description = ''Common unicode operations'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-unicodeplus-master.flake = false;
  inputs.src-unicodeplus-master.owner = "nitely";
  inputs.src-unicodeplus-master.ref   = "refs/heads/master";
  inputs.src-unicodeplus-master.repo  = "nim-unicodeplus";
  inputs.src-unicodeplus-master.type  = "github";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-unicodeplus-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-unicodeplus-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}