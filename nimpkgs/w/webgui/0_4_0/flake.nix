{
  description = ''Web Technologies based Crossplatform GUI, modified wrapper for modified webview.h'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-webgui-0_4_0.flake = false;
  inputs.src-webgui-0_4_0.owner = "juancarlospaco";
  inputs.src-webgui-0_4_0.ref   = "refs/tags/0.4.0";
  inputs.src-webgui-0_4_0.repo  = "webgui";
  inputs.src-webgui-0_4_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-webgui-0_4_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-webgui-0_4_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}