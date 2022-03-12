{
  description = ''A simple GUI front for Nimble.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimblegui-master.flake = false;
  inputs.src-nimblegui-master.owner = "ThomasTJdev";
  inputs.src-nimblegui-master.ref   = "refs/heads/master";
  inputs.src-nimblegui-master.repo  = "nim_nimble_gui";
  inputs.src-nimblegui-master.type  = "github";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimblegui-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimblegui-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}