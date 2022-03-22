{
  description = ''Helper to run nim code like a script'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimr-master.flake = false;
  inputs.src-nimr-master.owner = "Jeff-Ciesielski";
  inputs.src-nimr-master.ref   = "master";
  inputs.src-nimr-master.repo  = "nimr";
  inputs.src-nimr-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimr-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimr-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}