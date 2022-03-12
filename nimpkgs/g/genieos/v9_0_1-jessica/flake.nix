{
  description = ''Too awesome procs to be included in nimrod.os module'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-genieos-v9_0_1-jessica.flake = false;
  inputs.src-genieos-v9_0_1-jessica.owner = "Araq";
  inputs.src-genieos-v9_0_1-jessica.ref   = "refs/tags/v9.0.1-jessica";
  inputs.src-genieos-v9_0_1-jessica.repo  = "genieos";
  inputs.src-genieos-v9_0_1-jessica.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-genieos-v9_0_1-jessica"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-genieos-v9_0_1-jessica";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}