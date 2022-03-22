{
  description = ''Nimble with GUI'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimblegui-v0_1_2.flake = false;
  inputs.src-nimblegui-v0_1_2.owner = "ThomasTJdev";
  inputs.src-nimblegui-v0_1_2.ref   = "v0_1_2";
  inputs.src-nimblegui-v0_1_2.repo  = "nim_nimble_gui";
  inputs.src-nimblegui-v0_1_2.type  = "github";
  
  inputs."uibuilder".owner = "nim-nix-pkgs";
  inputs."uibuilder".ref   = "master";
  inputs."uibuilder".repo  = "uibuilder";
  inputs."uibuilder".dir   = "0_2_1";
  inputs."uibuilder".type  = "github";
  inputs."uibuilder".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uibuilder".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ui".owner = "nim-nix-pkgs";
  inputs."ui".ref   = "master";
  inputs."ui".repo  = "ui";
  inputs."ui".dir   = "";
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