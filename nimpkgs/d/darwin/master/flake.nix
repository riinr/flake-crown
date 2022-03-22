{
  description = ''Collection of bindings to MacOS and iOS APIs'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-darwin-master.flake = false;
  inputs.src-darwin-master.owner = "yglukhov";
  inputs.src-darwin-master.ref   = "master";
  inputs.src-darwin-master.repo  = "darwin";
  inputs.src-darwin-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-darwin-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-darwin-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}