{
  description = ''Elegant optional types'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-questionable-main.flake = false;
  inputs.src-questionable-main.owner = "markspanbroek";
  inputs.src-questionable-main.ref   = "refs/heads/main";
  inputs.src-questionable-main.repo  = "questionable";
  inputs.src-questionable-main.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-questionable-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-questionable-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}