{
  description = ''Libsvm wrapper rescued from the stdlib.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-libsvm_legacy-master.flake = false;
  inputs.src-libsvm_legacy-master.ref   = "refs/heads/master";
  inputs.src-libsvm_legacy-master.owner = "nim-lang";
  inputs.src-libsvm_legacy-master.repo  = "libsvm_legacy";
  inputs.src-libsvm_legacy-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-libsvm_legacy-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-libsvm_legacy-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}