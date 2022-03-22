{
  description = ''Option types'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-optionals-master.flake = false;
  inputs.src-optionals-master.ref   = "refs/heads/master";
  inputs.src-optionals-master.owner = "MasonMcGill";
  inputs.src-optionals-master.repo  = "optionals";
  inputs.src-optionals-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-optionals-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-optionals-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}