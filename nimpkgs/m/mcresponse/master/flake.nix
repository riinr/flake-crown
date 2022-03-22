{
  description = ''mConnect Standard HTTP network-status codes/texts & Transaction-Response Package'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-mcresponse-master.flake = false;
  inputs.src-mcresponse-master.owner = "abbeymart";
  inputs.src-mcresponse-master.ref   = "master";
  inputs.src-mcresponse-master.repo  = "mcresponse-nim";
  inputs.src-mcresponse-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-mcresponse-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-mcresponse-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}