{
  description = ''Encoder/decoder for any base alphabet up to 256 with leading zero compression'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nbaser-v1_0_1.flake = false;
  inputs.src-nbaser-v1_0_1.ref   = "refs/tags/v1.0.1";
  inputs.src-nbaser-v1_0_1.owner = "D-Nice";
  inputs.src-nbaser-v1_0_1.repo  = "nbaser";
  inputs.src-nbaser-v1_0_1.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nbaser-v1_0_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nbaser-v1_0_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}