{
  description = ''A library for rendering text with paranim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-paratext-0_9_0.flake = false;
  inputs.src-paratext-0_9_0.ref   = "refs/tags/0.9.0";
  inputs.src-paratext-0_9_0.owner = "paranim";
  inputs.src-paratext-0_9_0.repo  = "paratext";
  inputs.src-paratext-0_9_0.type  = "github";
  
  inputs."paranim".owner = "nim-nix-pkgs";
  inputs."paranim".ref   = "master";
  inputs."paranim".repo  = "paranim";
  inputs."paranim".dir   = "0_11_0";
  inputs."paranim".type  = "github";
  inputs."paranim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paranim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-paratext-0_9_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-paratext-0_9_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}