{
  description = ''A simple TLDR pages client'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-mt-main.flake = false;
  inputs.src-mt-main.owner = "eqf0";
  inputs.src-mt-main.ref   = "refs/heads/main";
  inputs.src-mt-main.repo  = "mt";
  inputs.src-mt-main.type  = "other";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-mt-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-mt-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}