{
  description = ''High level xml library for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-xmltools-v0_0_3.flake = false;
  inputs.src-xmltools-v0_0_3.ref   = "refs/tags/v0.0.3";
  inputs.src-xmltools-v0_0_3.owner = "vegansk";
  inputs.src-xmltools-v0_0_3.repo  = "xmltools";
  inputs.src-xmltools-v0_0_3.type  = "github";
  
  inputs."nimfp".owner = "nim-nix-pkgs";
  inputs."nimfp".ref   = "master";
  inputs."nimfp".repo  = "nimfp";
  inputs."nimfp".dir   = "v0_4_4";
  inputs."nimfp".type  = "github";
  inputs."nimfp".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfp".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-xmltools-v0_0_3"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-xmltools-v0_0_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}