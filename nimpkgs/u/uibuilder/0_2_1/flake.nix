{
  description = ''UI building with Gnome's Glade'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-uibuilder-0_2_1.flake = false;
  inputs.src-uibuilder-0_2_1.owner = "ba0f3";
  inputs.src-uibuilder-0_2_1.ref   = "refs/tags/0.2.1";
  inputs.src-uibuilder-0_2_1.repo  = "uibuilder.nim";
  inputs.src-uibuilder-0_2_1.type  = "github";
  
  inputs."ui".dir   = "nimpkgs/u/ui";
  inputs."ui".owner = "riinr";
  inputs."ui".ref   = "flake-pinning";
  inputs."ui".repo  = "flake-nimble";
  inputs."ui".type  = "github";
  inputs."ui".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ui".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xml".dir   = "nimpkgs/x/xml";
  inputs."xml".owner = "riinr";
  inputs."xml".ref   = "flake-pinning";
  inputs."xml".repo  = "flake-nimble";
  inputs."xml".type  = "github";
  inputs."xml".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xml".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-uibuilder-0_2_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-uibuilder-0_2_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}