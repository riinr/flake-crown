{
  description = ''Transform latin letters to runes & vice versa. Four runic dialects available.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-riimut-main.flake = false;
  inputs.src-riimut-main.owner = "stscoundrel";
  inputs.src-riimut-main.ref   = "refs/heads/main";
  inputs.src-riimut-main.repo  = "riimut-nim";
  inputs.src-riimut-main.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-riimut-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-riimut-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}