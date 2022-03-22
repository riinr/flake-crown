{
  description = ''math expression evaluator library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-kexpr-master.flake = false;
  inputs.src-kexpr-master.owner = "brentp";
  inputs.src-kexpr-master.ref   = "master";
  inputs.src-kexpr-master.repo  = "kexpr-nim";
  inputs.src-kexpr-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-kexpr-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-kexpr-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}