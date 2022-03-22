{
  description = ''Bind to JavaScript and Emscripten environments'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-jsbind-master.flake = false;
  inputs.src-jsbind-master.owner = "yglukhov";
  inputs.src-jsbind-master.ref   = "master";
  inputs.src-jsbind-master.repo  = "jsbind";
  inputs.src-jsbind-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-jsbind-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-jsbind-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}