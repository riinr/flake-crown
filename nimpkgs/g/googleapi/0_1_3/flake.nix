{
  description = ''Google API for nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-googleapi-0_1_3.flake = false;
  inputs.src-googleapi-0_1_3.owner = "treeform";
  inputs.src-googleapi-0_1_3.ref   = "refs/tags/0.1.3";
  inputs.src-googleapi-0_1_3.repo  = "googleapi";
  inputs.src-googleapi-0_1_3.type  = "github";
  
  inputs."jwt".dir   = "nimpkgs/j/jwt";
  inputs."jwt".owner = "riinr";
  inputs."jwt".ref   = "flake-pinning";
  inputs."jwt".repo  = "flake-nimble";
  inputs."jwt".type  = "github";
  inputs."jwt".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jwt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-googleapi-0_1_3"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-googleapi-0_1_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}