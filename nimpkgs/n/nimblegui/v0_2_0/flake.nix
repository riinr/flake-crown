{
  description = ''A simple GUI front for Nimble.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimblegui-v0_2_0.flake = false;
  inputs.src-nimblegui-v0_2_0.owner = "ThomasTJdev";
  inputs.src-nimblegui-v0_2_0.ref   = "refs/tags/v0.2.0";
  inputs.src-nimblegui-v0_2_0.repo  = "nim_nimble_gui";
  inputs.src-nimblegui-v0_2_0.type  = "github";
  
  inputs."webgui".dir   = "nimpkgs/w/webgui";
  inputs."webgui".owner = "riinr";
  inputs."webgui".ref   = "flake-pinning";
  inputs."webgui".repo  = "flake-nimble";
  inputs."webgui".type  = "github";
  inputs."webgui".inputs.nixpkgs.follows = "nixpkgs";
  inputs."webgui".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimblegui-v0_2_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimblegui-v0_2_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}