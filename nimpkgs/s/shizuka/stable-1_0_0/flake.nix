{
  description = ''The Nim framework for VK API.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-shizuka-stable-1_0_0.flake = false;
  inputs.src-shizuka-stable-1_0_0.owner = "ethosa";
  inputs.src-shizuka-stable-1_0_0.ref   = "refs/tags/stable-1.0.0";
  inputs.src-shizuka-stable-1_0_0.repo  = "shizuka";
  inputs.src-shizuka-stable-1_0_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-shizuka-stable-1_0_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-shizuka-stable-1_0_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}