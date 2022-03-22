{
  description = ''Nim bindings for zserge's webview'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-webview-master.flake = false;
  inputs.src-webview-master.ref   = "refs/heads/master";
  inputs.src-webview-master.owner = "oskca";
  inputs.src-webview-master.repo  = "webview";
  inputs.src-webview-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-webview-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-webview-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}