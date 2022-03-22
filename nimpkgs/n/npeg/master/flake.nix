{
  description = ''a PEG library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-npeg-master.flake = false;
  inputs.src-npeg-master.owner = "zevv";
  inputs.src-npeg-master.ref   = "master";
  inputs.src-npeg-master.repo  = "npeg";
  inputs.src-npeg-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-npeg-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-npeg-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}