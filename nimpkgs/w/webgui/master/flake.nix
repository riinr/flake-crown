{
  description = ''Web Technologies based Crossplatform GUI, modified wrapper for modified webview.h'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-webgui-master.flake = false;
  inputs.src-webgui-master.ref   = "refs/heads/master";
  inputs.src-webgui-master.owner = "juancarlospaco";
  inputs.src-webgui-master.repo  = "webgui";
  inputs.src-webgui-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-webgui-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-webgui-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}