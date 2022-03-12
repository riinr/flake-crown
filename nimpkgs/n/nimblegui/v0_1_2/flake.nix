{
  description = ''A simple GUI front for Nimble.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimblegui-v0_1_2.flake = false;
  inputs.src-nimblegui-v0_1_2.owner = "ThomasTJdev";
  inputs.src-nimblegui-v0_1_2.ref   = "refs/tags/v0.1.2";
  inputs.src-nimblegui-v0_1_2.repo  = "nim_nimble_gui";
  inputs.src-nimblegui-v0_1_2.type  = "github";
  
  inputs."uibuilder".dir   = "nimpkgs/u/uibuilder";
  inputs."uibuilder".owner = "riinr";
  inputs."uibuilder".ref   = "flake-pinning";
  inputs."uibuilder".repo  = "flake-nimble";
  inputs."uibuilder".type  = "github";
  inputs."uibuilder".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uibuilder".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ui".dir   = "nimpkgs/u/ui";
  inputs."ui".owner = "riinr";
  inputs."ui".ref   = "flake-pinning";
  inputs."ui".repo  = "flake-nimble";
  inputs."ui".type  = "github";
  inputs."ui".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ui".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimblegui-v0_1_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimblegui-v0_1_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}