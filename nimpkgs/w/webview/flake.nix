{
  description = ''Nim bindings for https://github.com/zserge/webview, a cross platform single header webview library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."webview-master".dir   = "master";
  inputs."webview-master".owner = "nim-nix-pkgs";
  inputs."webview-master".ref   = "master";
  inputs."webview-master".repo  = "webview";
  inputs."webview-master".type  = "github";
  inputs."webview-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."webview-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"];
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}