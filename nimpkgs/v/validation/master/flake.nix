{
  description = ''Field validation for Nim objects'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-validation-master.flake = false;
  inputs.src-validation-master.ref   = "refs/heads/master";
  inputs.src-validation-master.owner = "captainbland";
  inputs.src-validation-master.repo  = "nim-validation";
  inputs.src-validation-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-validation-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-validation-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}