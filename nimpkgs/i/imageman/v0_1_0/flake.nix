{
  description = ''Image manipulation library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-imageman-v0_1_0.flake = false;
  inputs.src-imageman-v0_1_0.owner = "SolitudeSF";
  inputs.src-imageman-v0_1_0.ref   = "refs/tags/v0.1.0";
  inputs.src-imageman-v0_1_0.repo  = "imageman";
  inputs.src-imageman-v0_1_0.type  = "github";
  
  inputs."nimpng".dir   = "nimpkgs/n/nimpng";
  inputs."nimpng".owner = "riinr";
  inputs."nimpng".ref   = "flake-pinning";
  inputs."nimpng".repo  = "flake-nimble";
  inputs."nimpng".type  = "github";
  inputs."nimpng".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpng".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-imageman-v0_1_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-imageman-v0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}