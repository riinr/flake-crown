{
  description = ''pnm is library for PNM (Portable AnyMap).'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-pnm-master.flake = false;
  inputs.src-pnm-master.owner = "jiro4989";
  inputs.src-pnm-master.ref   = "refs/heads/master";
  inputs.src-pnm-master.repo  = "pnm";
  inputs.src-pnm-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-pnm-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-pnm-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}