{
  description = ''Nim wrapper for edlib'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-edlib-main.flake = false;
  inputs.src-edlib-main.owner = "bio-nim";
  inputs.src-edlib-main.ref   = "refs/heads/main";
  inputs.src-edlib-main.repo  = "nim-edlib";
  inputs.src-edlib-main.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-edlib-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-edlib-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}