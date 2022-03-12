{
  description = ''Encode/decode arbitrary unicode bases from size 2 to 256'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nbaser-v1_0_0.flake = false;
  inputs.src-nbaser-v1_0_0.owner = "D-Nice";
  inputs.src-nbaser-v1_0_0.ref   = "refs/tags/v1.0.0";
  inputs.src-nbaser-v1_0_0.repo  = "nbaser";
  inputs.src-nbaser-v1_0_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nbaser-v1_0_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nbaser-v1_0_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}