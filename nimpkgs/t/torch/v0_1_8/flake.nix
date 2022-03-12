{
  description = ''A nim flavor of pytorch'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-torch-v0_1_8.flake = false;
  inputs.src-torch-v0_1_8.owner = "fragcolor-xyz";
  inputs.src-torch-v0_1_8.ref   = "refs/tags/v0.1.8";
  inputs.src-torch-v0_1_8.repo  = "nimtorch";
  inputs.src-torch-v0_1_8.type  = "github";
  
  inputs."fragments".dir   = "nimpkgs/f/fragments";
  inputs."fragments".owner = "riinr";
  inputs."fragments".ref   = "flake-pinning";
  inputs."fragments".repo  = "flake-nimble";
  inputs."fragments".type  = "github";
  inputs."fragments".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fragments".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-torch-v0_1_8"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-torch-v0_1_8";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}