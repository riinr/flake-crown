{
  description = ''A graphics math library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-origin-master.flake = false;
  inputs.src-origin-master.owner = "mfiano";
  inputs.src-origin-master.ref   = "refs/heads/master";
  inputs.src-origin-master.repo  = "origin.nim";
  inputs.src-origin-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-origin-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-origin-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}