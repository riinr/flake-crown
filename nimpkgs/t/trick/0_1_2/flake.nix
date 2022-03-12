{
  description = ''Game Boy Advance image conversion library and more'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-trick-0_1_2.flake = false;
  inputs.src-trick-0_1_2.owner = "exelotl";
  inputs.src-trick-0_1_2.ref   = "refs/tags/0.1.2";
  inputs.src-trick-0_1_2.repo  = "trick";
  inputs.src-trick-0_1_2.type  = "github";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-trick-0_1_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-trick-0_1_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}