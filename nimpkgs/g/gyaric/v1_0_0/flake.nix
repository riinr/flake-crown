{
  description = ''gyaric is a module to encode/decode text to unreadable gyaru's text.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-gyaric-v1_0_0.flake = false;
  inputs.src-gyaric-v1_0_0.ref   = "refs/tags/v1.0.0";
  inputs.src-gyaric-v1_0_0.owner = "jiro4989";
  inputs.src-gyaric-v1_0_0.repo  = "gyaric";
  inputs.src-gyaric-v1_0_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-gyaric-v1_0_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-gyaric-v1_0_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}