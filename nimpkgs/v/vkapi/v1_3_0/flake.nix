{
  description = ''A wrapper for the vk.com API (russian social network)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-vkapi-v1_3_0.flake = false;
  inputs.src-vkapi-v1_3_0.owner = "Yardanico";
  inputs.src-vkapi-v1_3_0.ref   = "refs/tags/v1.3.0";
  inputs.src-vkapi-v1_3_0.repo  = "nimvkapi";
  inputs.src-vkapi-v1_3_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-vkapi-v1_3_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-vkapi-v1_3_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}