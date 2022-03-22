{
  description = ''Extended library for nim stdlib'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-stdext-v0_0_11.flake = false;
  inputs.src-stdext-v0_0_11.ref   = "refs/tags/v0.0.11";
  inputs.src-stdext-v0_0_11.owner = "zendbit";
  inputs.src-stdext-v0_0_11.repo  = "nim.stdext";
  inputs.src-stdext-v0_0_11.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-stdext-v0_0_11"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-stdext-v0_0_11";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}