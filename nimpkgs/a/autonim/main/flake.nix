{
  description = ''Wrapper for AutoIt v3.3.14.2'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-autonim-main.flake = false;
  inputs.src-autonim-main.owner = "Guevara-chan";
  inputs.src-autonim-main.ref   = "refs/heads/main";
  inputs.src-autonim-main.repo  = "AutoNim";
  inputs.src-autonim-main.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-autonim-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-autonim-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}