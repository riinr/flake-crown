{
  description = ''ffpass - Api Calls for Ford vehicles equipped with the fordpass app.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ffpass-master.flake = false;
  inputs.src-ffpass-master.ref   = "refs/heads/master";
  inputs.src-ffpass-master.owner = "bunkford";
  inputs.src-ffpass-master.repo  = "ffpass";
  inputs.src-ffpass-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ffpass-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-ffpass-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}