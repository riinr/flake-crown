{
  description = ''minimal jinja like experiment'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nwt-master.flake = false;
  inputs.src-nwt-master.owner = "enthus1ast";
  inputs.src-nwt-master.ref   = "master";
  inputs.src-nwt-master.repo  = "nimWebTemplates";
  inputs.src-nwt-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nwt-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nwt-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}