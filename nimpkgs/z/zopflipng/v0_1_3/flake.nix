{
  description = ''zopflipng-like png optimization'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-zopflipng-v0_1_3.flake = false;
  inputs.src-zopflipng-v0_1_3.owner = "bung87";
  inputs.src-zopflipng-v0_1_3.ref   = "refs/tags/v0.1.3";
  inputs.src-zopflipng-v0_1_3.repo  = "zopflipng";
  inputs.src-zopflipng-v0_1_3.type  = "github";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-zopflipng-v0_1_3"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-zopflipng-v0_1_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}