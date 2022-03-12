{
  description = ''Google API for nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-googleapi-v0_1_0.flake = false;
  inputs.src-googleapi-v0_1_0.owner = "treeform";
  inputs.src-googleapi-v0_1_0.ref   = "refs/tags/v0.1.0";
  inputs.src-googleapi-v0_1_0.repo  = "googleapi";
  inputs.src-googleapi-v0_1_0.type  = "github";
  
  inputs."quickjwt".dir   = "nimpkgs/q/quickjwt";
  inputs."quickjwt".owner = "riinr";
  inputs."quickjwt".ref   = "flake-pinning";
  inputs."quickjwt".repo  = "flake-nimble";
  inputs."quickjwt".type  = "github";
  inputs."quickjwt".inputs.nixpkgs.follows = "nixpkgs";
  inputs."quickjwt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-googleapi-v0_1_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-googleapi-v0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}