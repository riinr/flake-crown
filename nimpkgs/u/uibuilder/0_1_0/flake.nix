{
  description = ''UI building with Gnome's Glade'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-uibuilder-0_1_0.flake = false;
  inputs.src-uibuilder-0_1_0.ref   = "refs/tags/0.1.0";
  inputs.src-uibuilder-0_1_0.owner = "ba0f3";
  inputs.src-uibuilder-0_1_0.repo  = "uibuilder.nim";
  inputs.src-uibuilder-0_1_0.type  = "github";
  
  inputs."ui".owner = "nim-nix-pkgs";
  inputs."ui".ref   = "master";
  inputs."ui".repo  = "ui";
  inputs."ui".dir   = "";
  inputs."ui".type  = "github";
  inputs."ui".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ui".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."q".owner = "nim-nix-pkgs";
  inputs."q".ref   = "master";
  inputs."q".repo  = "q";
  inputs."q".dir   = "0_0_8";
  inputs."q".type  = "github";
  inputs."q".inputs.nixpkgs.follows = "nixpkgs";
  inputs."q".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-uibuilder-0_1_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-uibuilder-0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}