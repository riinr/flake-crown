{
  description = ''Secure multi-party computation'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-NiMPC-v0_2_0.flake = false;
  inputs.src-NiMPC-v0_2_0.owner = "markspanbroek";
  inputs.src-NiMPC-v0_2_0.ref   = "v0_2_0";
  inputs.src-NiMPC-v0_2_0.repo  = "nimpc";
  inputs.src-NiMPC-v0_2_0.type  = "github";
  
  inputs."sysrandom".owner = "nim-nix-pkgs";
  inputs."sysrandom".ref   = "master";
  inputs."sysrandom".repo  = "sysrandom";
  inputs."sysrandom".dir   = "v1_1_0";
  inputs."sysrandom".type  = "github";
  inputs."sysrandom".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sysrandom".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."simpleot".owner = "nim-nix-pkgs";
  inputs."simpleot".ref   = "master";
  inputs."simpleot".repo  = "simpleot";
  inputs."simpleot".dir   = "v0_5_1";
  inputs."simpleot".type  = "github";
  inputs."simpleot".inputs.nixpkgs.follows = "nixpkgs";
  inputs."simpleot".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-NiMPC-v0_2_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-NiMPC-v0_2_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}