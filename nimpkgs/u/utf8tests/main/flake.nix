{
  description = ''UTF-8 test cases and supporting code.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-utf8tests-main.flake = false;
  inputs.src-utf8tests-main.owner = "flenniken";
  inputs.src-utf8tests-main.ref   = "refs/heads/main";
  inputs.src-utf8tests-main.repo  = "utf8tests";
  inputs.src-utf8tests-main.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-utf8tests-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-utf8tests-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}