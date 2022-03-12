{
  description = ''PNG(Portable Network Graphics) encoder and decoder'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimPNG-v0_2_5.flake = false;
  inputs.src-nimPNG-v0_2_5.owner = "jangko";
  inputs.src-nimPNG-v0_2_5.ref   = "refs/tags/v0.2.5";
  inputs.src-nimPNG-v0_2_5.repo  = "nimPNG";
  inputs.src-nimPNG-v0_2_5.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimPNG-v0_2_5"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimPNG-v0_2_5";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}