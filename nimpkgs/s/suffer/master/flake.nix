{
  description = ''a nim library for drawing 2d shapes, text, and images to 32bit software pixel buffers'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-suffer-master.flake = false;
  inputs.src-suffer-master.ref   = "refs/heads/master";
  inputs.src-suffer-master.owner = "emekoi";
  inputs.src-suffer-master.repo  = "suffer";
  inputs.src-suffer-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-suffer-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-suffer-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}