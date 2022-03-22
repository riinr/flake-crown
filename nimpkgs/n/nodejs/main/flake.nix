{
  description = ''Alternative StdLib for Nim for NodeJS/JavaScript targets, hijacks NodeJS StdLib for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nodejs-main.flake = false;
  inputs.src-nodejs-main.ref   = "refs/heads/main";
  inputs.src-nodejs-main.owner = "juancarlospaco";
  inputs.src-nodejs-main.repo  = "nodestdlib";
  inputs.src-nodejs-main.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nodejs-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nodejs-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}