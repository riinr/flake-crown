{
  description = ''Library for async programming and communication. This Library uses a future/promise, non-blocking I/O model based on libuv.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-node-master.flake = false;
  inputs.src-node-master.owner = "tulayang";
  inputs.src-node-master.ref   = "refs/heads/master";
  inputs.src-node-master.repo  = "nimnode";
  inputs.src-node-master.type  = "github";
  
  inputs."httpkit".owner = "nim-nix-pkgs";
  inputs."httpkit".ref   = "master";
  inputs."httpkit".repo  = "httpkit";
  inputs."httpkit".type  = "github";
  inputs."httpkit".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpkit".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-node-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-node-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}