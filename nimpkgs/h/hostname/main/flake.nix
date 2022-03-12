{
  description = ''Nim library to get/set a hostname'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-hostname-main.flake = false;
  inputs.src-hostname-main.owner = "rominf";
  inputs.src-hostname-main.ref   = "refs/heads/main";
  inputs.src-hostname-main.repo  = "nim-hostname";
  inputs.src-hostname-main.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-hostname-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-hostname-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}