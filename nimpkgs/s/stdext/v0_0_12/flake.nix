{
  description = ''Extends stdlib make it easy on some case'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-stdext-v0_0_12.flake = false;
  inputs.src-stdext-v0_0_12.owner = "zendbit";
  inputs.src-stdext-v0_0_12.ref   = "refs/tags/v0.0.12";
  inputs.src-stdext-v0_0_12.repo  = "nim.stdext";
  inputs.src-stdext-v0_0_12.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-stdext-v0_0_12"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-stdext-v0_0_12";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}