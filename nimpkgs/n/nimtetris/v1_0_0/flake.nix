{
  description = ''A simple terminal tetris in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimtetris-v1_0_0.flake = false;
  inputs.src-nimtetris-v1_0_0.owner = "jiro4989";
  inputs.src-nimtetris-v1_0_0.ref   = "v1_0_0";
  inputs.src-nimtetris-v1_0_0.repo  = "nimtetris";
  inputs.src-nimtetris-v1_0_0.type  = "github";
  
  inputs."illwill".owner = "nim-nix-pkgs";
  inputs."illwill".ref   = "master";
  inputs."illwill".repo  = "illwill";
  inputs."illwill".dir   = "v0_2_0";
  inputs."illwill".type  = "github";
  inputs."illwill".inputs.nixpkgs.follows = "nixpkgs";
  inputs."illwill".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimtetris-v1_0_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimtetris-v1_0_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}