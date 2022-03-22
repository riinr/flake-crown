{
  description = ''An advanced parsing library for mathematical expressions and equations'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimkalc-main.flake = false;
  inputs.src-nimkalc-main.ref   = "refs/heads/main";
  inputs.src-nimkalc-main.owner = "nocturn9x";
  inputs.src-nimkalc-main.repo  = "nimkalc";
  inputs.src-nimkalc-main.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimkalc-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimkalc-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}