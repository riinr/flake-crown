{
  description = ''SipHash, a pseudorandom function optimized for short messages.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-siphash-master.flake = false;
  inputs.src-siphash-master.owner = "~ehmry";
  inputs.src-siphash-master.ref   = "master";
  inputs.src-siphash-master.repo  = "nim_siphash";
  inputs.src-siphash-master.type  = "sourcehut";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-siphash-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-siphash-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}