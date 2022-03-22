{
  description = ''Static website generation'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-baker-v1_8_3.flake = false;
  inputs.src-baker-v1_8_3.ref   = "refs/tags/v1.8.3";
  inputs.src-baker-v1_8_3.owner = "jasonrbriggs";
  inputs.src-baker-v1_8_3.repo  = "baker";
  inputs.src-baker-v1_8_3.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-baker-v1_8_3"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-baker-v1_8_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}