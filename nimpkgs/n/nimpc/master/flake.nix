{
  description = ''Secure multi-party computation'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-NiMPC-master.flake = false;
  inputs.src-NiMPC-master.ref   = "refs/heads/master";
  inputs.src-NiMPC-master.owner = "markspanbroek";
  inputs.src-NiMPC-master.repo  = "nimpc";
  inputs.src-NiMPC-master.type  = "github";
  
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
  
  inputs."monocypher".owner = "nim-nix-pkgs";
  inputs."monocypher".ref   = "master";
  inputs."monocypher".repo  = "monocypher";
  inputs."monocypher".dir   = "v0_2_1";
  inputs."monocypher".type  = "github";
  inputs."monocypher".inputs.nixpkgs.follows = "nixpkgs";
  inputs."monocypher".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-NiMPC-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-NiMPC-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}