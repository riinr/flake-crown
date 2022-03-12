{
  description = ''GitIgnore Generation Interface'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-gigi-v0_2_1.flake = false;
  inputs.src-gigi-v0_2_1.owner = "attakei";
  inputs.src-gigi-v0_2_1.ref   = "refs/tags/v0.2.1";
  inputs.src-gigi-v0_2_1.repo  = "gigi";
  inputs.src-gigi-v0_2_1.type  = "github";
  
  inputs."puppy".dir   = "nimpkgs/p/puppy";
  inputs."puppy".owner = "riinr";
  inputs."puppy".ref   = "flake-pinning";
  inputs."puppy".repo  = "flake-nimble";
  inputs."puppy".type  = "github";
  inputs."puppy".inputs.nixpkgs.follows = "nixpkgs";
  inputs."puppy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-gigi-v0_2_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-gigi-v0_2_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}