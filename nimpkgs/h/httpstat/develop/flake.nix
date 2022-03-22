{
  description = ''curl statistics made simple '';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-httpstat-develop.flake = false;
  inputs.src-httpstat-develop.owner = "ucpr";
  inputs.src-httpstat-develop.ref   = "develop";
  inputs.src-httpstat-develop.repo  = "httpstat";
  inputs.src-httpstat-develop.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-httpstat-develop"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-httpstat-develop";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}