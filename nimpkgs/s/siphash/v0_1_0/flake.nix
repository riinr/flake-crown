{
  description = ''SipHash, a pseudorandom function optimized for short messages.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-siphash-v0_1_0.flake = false;
  inputs.src-siphash-v0_1_0.ref   = "v0.1.0";
  inputs.src-siphash-v0_1_0.owner = "~ehmry";
  inputs.src-siphash-v0_1_0.repo  = "nim_siphash";
  inputs.src-siphash-v0_1_0.type  = "sourcehut";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-siphash-v0_1_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-siphash-v0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}