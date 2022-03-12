{
  description = ''UI building with Gnome's Glade'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-uibuilder-master.flake = false;
  inputs.src-uibuilder-master.owner = "ba0f3";
  inputs.src-uibuilder-master.ref   = "refs/heads/master";
  inputs.src-uibuilder-master.repo  = "uibuilder.nim";
  inputs.src-uibuilder-master.type  = "github";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-uibuilder-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-uibuilder-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}