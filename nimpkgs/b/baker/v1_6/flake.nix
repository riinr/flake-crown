{
  description = ''Static website generation'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-baker-v1_6.flake = false;
  inputs.src-baker-v1_6.ref   = "refs/tags/v1.6";
  inputs.src-baker-v1_6.owner = "jasonrbriggs";
  inputs.src-baker-v1_6.repo  = "baker";
  inputs.src-baker-v1_6.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-baker-v1_6"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-baker-v1_6";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}