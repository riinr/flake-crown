{
  description = ''Audius API'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-audius-v0_1_0.flake = false;
  inputs.src-audius-v0_1_0.owner = "ceebeel";
  inputs.src-audius-v0_1_0.ref   = "v0_1_0";
  inputs.src-audius-v0_1_0.repo  = "audius";
  inputs.src-audius-v0_1_0.type  = "github";
  
  inputs."jsony".owner = "nim-nix-pkgs";
  inputs."jsony".ref   = "master";
  inputs."jsony".repo  = "jsony";
  inputs."jsony".dir   = "1_1_3";
  inputs."jsony".type  = "github";
  inputs."jsony".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsony".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-audius-v0_1_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-audius-v0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}