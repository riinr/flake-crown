{
  description = ''Nim wrapper for the C NanoVG antialiased vector graphics rendering library for OpenGL'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nanovg-master.flake = false;
  inputs.src-nanovg-master.owner = "johnnovak";
  inputs.src-nanovg-master.ref   = "refs/heads/master";
  inputs.src-nanovg-master.repo  = "nim-nanovg";
  inputs.src-nanovg-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nanovg-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nanovg-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}