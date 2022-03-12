{
  description = ''Secure multi-party computation'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-NiMPC-v0_4_1.flake = false;
  inputs.src-NiMPC-v0_4_1.owner = "markspanbroek";
  inputs.src-NiMPC-v0_4_1.ref   = "refs/tags/v0.4.1";
  inputs.src-NiMPC-v0_4_1.repo  = "nimpc";
  inputs.src-NiMPC-v0_4_1.type  = "github";
  
  inputs."sysrandom".dir   = "nimpkgs/s/sysrandom";
  inputs."sysrandom".owner = "riinr";
  inputs."sysrandom".ref   = "flake-pinning";
  inputs."sysrandom".repo  = "flake-nimble";
  inputs."sysrandom".type  = "github";
  inputs."sysrandom".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sysrandom".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."simpleot".dir   = "nimpkgs/s/simpleot";
  inputs."simpleot".owner = "riinr";
  inputs."simpleot".ref   = "flake-pinning";
  inputs."simpleot".repo  = "flake-nimble";
  inputs."simpleot".type  = "github";
  inputs."simpleot".inputs.nixpkgs.follows = "nixpkgs";
  inputs."simpleot".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."monocypher".dir   = "nimpkgs/m/monocypher";
  inputs."monocypher".owner = "riinr";
  inputs."monocypher".ref   = "flake-pinning";
  inputs."monocypher".repo  = "flake-nimble";
  inputs."monocypher".type  = "github";
  inputs."monocypher".inputs.nixpkgs.follows = "nixpkgs";
  inputs."monocypher".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-NiMPC-v0_4_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-NiMPC-v0_4_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}