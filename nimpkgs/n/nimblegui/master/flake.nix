{
  description = ''Nimble with GUI'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimblegui-master.flake = false;
  inputs.src-nimblegui-master.owner = "ThomasTJdev";
  inputs.src-nimblegui-master.ref   = "master";
  inputs.src-nimblegui-master.repo  = "nim_nimble_gui";
  inputs.src-nimblegui-master.type  = "github";
  
  inputs."webgui".owner = "nim-nix-pkgs";
  inputs."webgui".ref   = "master";
  inputs."webgui".repo  = "webgui";
  inputs."webgui".dir   = "0_9_0";
  inputs."webgui".type  = "github";
  inputs."webgui".inputs.nixpkgs.follows = "nixpkgs";
  inputs."webgui".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimblegui-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimblegui-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}