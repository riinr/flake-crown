{
  description = ''A RPC framework for building web APIs'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nerve-master.flake = false;
  inputs.src-nerve-master.owner = "nepeckman";
  inputs.src-nerve-master.ref   = "refs/heads/master";
  inputs.src-nerve-master.repo  = "nerve-rpc";
  inputs.src-nerve-master.type  = "github";
  
  inputs."ws".owner = "nim-nix-pkgs";
  inputs."ws".ref   = "master";
  inputs."ws".repo  = "ws";
  inputs."ws".type  = "github";
  inputs."ws".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ws".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nerve-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nerve-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}